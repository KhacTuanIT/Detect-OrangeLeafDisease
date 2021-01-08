from imutils import paths
import cv2
import os
import pickle
import numpy as np
import glob
from filterLeaf import *


datas = []
labels = []

path = "./dataset/Leaves"
for dirpath, dirnames, files in os.walk(path, topdown=False):
    if dirpath == path:
        break
    if '\\' in dirpath: 
        name = dirpath.split('\\')[1] 
    else:
        name = ""
    print(f'Found directory: {dirpath}')
    print(name)
    for file_name in files:
        # print(os.path.join(path,name+"/" +file_name))
        imagePath = os.path.join(path,name+"/" +file_name)
        img = cv2.imread(imagePath)
        leaf = getLeaf(img)
        imgFeature = getHistograms(leaf)
        labels.append(name)
        datas.append(imgFeature) ## append to vector
        print(str('get feature of folder ' + str(name) + ' ...'))

print(len(datas), len(labels))

print("training...")
model = LinearSVC(C=25.0, max_iter = 3500000)
model.fit(datas, labels)

nameModel = "./model/modelLeafDisease.svca"
pickle.dump(model, open(nameModel, 'wb'))
print("Have save model successfully!")