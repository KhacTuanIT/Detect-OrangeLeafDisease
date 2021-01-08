import imghdr
import os
from flask import Flask, render_template, request, redirect, url_for, abort, send_from_directory, jsonify
from werkzeug.utils import secure_filename
import mysql.connector
import random
import string
from datetime import date, datetime, timedelta
from test import det

def id_generator(size=10, chars=string.ascii_uppercase + string.digits):
    return ''.join(random.choice(chars) for _ in range(size))

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="",
  database="cvs"
)

add_image = ("INSERT INTO anh "
            "(Image, created_at, updated_at) VALUES (%(image)s, %(created_at)s, %(updated_at)s)")

select_top_image = ("SELECT `Image` FROM anh ORDER BY `created_at` DESC LIMIT 1")
query = ("SELECT `disease_symptom`, `healing`, `disease_vnname` FROM disease "
         "WHERE `disease_name`=%(name)s LIMIT 1")

mycursor = mydb.cursor()

app = Flask(__name__)
app.config['MAX_CONTENT_LENGTH'] = 6 * 1024 * 1024
app.config['UPLOAD_EXTENSIONS'] = ['.jpg', '.png', '.gif']
app.config['UPLOAD_PATH'] = 'static/images/uploads'

def validate_image(stream):
    header = stream.read(512)  # 512 bytes should be enough for a header check
    stream.seek(0)  # reset stream pointer
    format = imghdr.what(None, header)
    if not format:
        return None
    return '.' + (format if format != 'jpeg' else 'jpg')

@app.route('/')
def index():
    files = os.listdir(app.config['UPLOAD_PATH'])
    return render_template('index.html', files=files)

@app.route('/', methods=['POST'])
def upload_files():
    uploaded_file = request.files['file']
    filename = secure_filename(uploaded_file.filename)
    if filename != '':
        ob = filename.split('.')
        filename = ob[0] + id_generator() + "." + ob[1]
        file_ext = os.path.splitext(filename)[1]
        if file_ext not in app.config['UPLOAD_EXTENSIONS'] or file_ext != validate_image(uploaded_file.stream):
            abort(400)
        uploaded_file.save(os.path.join(app.config['UPLOAD_PATH'], filename))
        timenow = datetime.now()
        data = {
            'image': str(filename),
            'created_at': timenow,
            'updated_at': timenow,
        }
        mycursor.execute(add_image, data)
        mydb.commit()
    return redirect(url_for('index'))

@app.route('/uploads/<filename>')
def upload(filename):
    return send_from_directory(app.config['UPLOAD_PATH'], filename)

@app.route('/detect', methods = ['GET', 'POST'])
def detect():
    mycursor.execute(select_top_image)
    img = ""
    data = {
        'success': 'success',
        'img': img,
        'offer': '',
        'disease': '',
        'symptom': '',
        'vnname': ''
    }
    for Image in mycursor:
        img = str(Image[0])
        print(img)
        data['img'] = str(Image[0])
    if not data['img'] is None:
        dis = det(os.path.join(app.config['UPLOAD_PATH'], img))
        data['disease'] = str(dis[0])
        na = {
            'name': data['disease'],
        }
        cursor = mydb.cursor()
        cursor.execute(query, na)
        for (disease_symptom, healing, disease_vnname) in cursor:
            data['symptom'] = disease_symptom
            data['offer'] = healing
            data['vnname'] = disease_vnname
        cursor.close()
    
    return jsonify(data)

if __name__ == "__main__":
    app.run()
