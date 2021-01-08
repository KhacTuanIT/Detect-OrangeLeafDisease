import subprocess, sys

def b():
    cmd = 'python E:/ComputerVision/Final/Web/static/PJ/test.py --image E:/ComputerVision/Final/Web/static/images/b(2).png'
    p = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    stdout, stderr = p.communicate()
    return stdout

print(b())