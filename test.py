import cv2
import numpy as np
import pickle
import argparse
from filterLeaf import *

# imagePath = 'E:/ComputerVision/Final/PJ/dataset/test/Blackspot/b (2).png'

nameModel = "E:/ComputerVision/Final/PJ/model/modelLeafDisease.svca"

file = open(nameModel, 'rb')
model = pickle.load(file)
def det(imagePath):
	img = cv2.imread(imagePath)
	leaf = getLeaf(img)
	imgFeature = getHistograms(leaf)

	classes = model.predict(imgFeature.reshape(1, -1))
	return classes
