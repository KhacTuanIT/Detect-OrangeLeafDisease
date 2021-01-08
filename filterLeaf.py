import cv2
import numpy as np
import matplotlib.pyplot as plt
from skimage import feature

# imgPath = "./dataset/Leaves/greening/g (108).png"
# img =  cv2.imread(imgPath)

#** getLeaf Func
# Using HSV to create color mask
# Return an image(160x160) with background color is black and leaf
def getLeaf(img):
    # change image color change from BGR -> HSV
    hsv = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)
    # find the green color 
    mask_green = cv2.inRange(hsv, (36,0,0), (86,255,255))
    # find the brown color
    mask_brown = cv2.inRange(hsv, (8, 60, 20), (30, 255, 200))
    # find the yellow color in the leaf
    mask_yellow = cv2.inRange(hsv, (21, 39, 64), (40, 255, 255))
    # find the dark_gray_green color in the leaf
    mask_len = cv2.inRange(hsv, (5, 25, 15), (50, 100, 100))
    # find the gold color in the leaf
    mask_gold = cv2.inRange(hsv, (3, 12, 5), (30, 253, 105))
    # find the ryan color in the leaf
    mask_ryan = cv2.inRange(hsv, (3, 10, 0), (42, 225, 70))
    # find light_brown color in the leaf
    mask_light_brown = cv2.inRange(hsv, (0, 10, 150), (15, 160, 255))
    # find light_pink color in the leaf
    mask_light_pink = cv2.inRange(hsv, (10, 50, 150), (19, 120, 255))

    # find any of the three colors(green or brown or yellow) in the image
    mask = cv2.bitwise_or(mask_green, mask_brown)
    mask = cv2.bitwise_or(mask, mask_yellow)
    mask = cv2.bitwise_or(mask, mask_len)
    mask = cv2.bitwise_or(mask, mask_gold)
    mask = cv2.bitwise_or(mask, mask_ryan)
    mask = cv2.bitwise_or(mask, mask_light_brown)
    mask = cv2.bitwise_or(mask, mask_light_pink)

    # Bitwise-AND mask and original image
    res = cv2.bitwise_and(img,img, mask= mask)

    # Filter leaf edge color
    mask_fil = cv2.bitwise_or(mask_brown, mask_yellow)
    mask_fil = cv2.bitwise_or(mask_fil, mask_len)
    mask_fil = cv2.bitwise_or(mask_fil, mask_gold)
    mask_fil = cv2.bitwise_or(mask_fil, mask_ryan)
    mask_fil = cv2.bitwise_or(mask_fil, mask_light_brown)
    mask_fil = cv2.bitwise_or(mask_fil, mask_light_pink)

    # fill a leaf with black bg color
    res_fil = cv2.bitwise_and(res,res, mask= mask_fil)

    # resize image to 160x160
    res_fil = cv2.resize(res_fil, (160, 160))
    return res_fil

#** getHistograms Func
# Using to get histograms of mean value of three color channels in an image
def getHistograms(img):
    # create a array feature_matrix to hold mean value of three color channels
    feature_matrix = np.zeros((160, 160))
    for i in range(0,img.shape[0]):
        for j in range(0,img.shape[1]):
            feature_matrix[i][j] = ((int(img[i,j,0]) + int(img[i,j,1]) + int(img[i,j,2]))/3)
    # calc histograms with bins 256 and range (0, 255)
    (hist, _) = np.histogram(feature_matrix.ravel(),
                bins=256,
                range=(0, 255))
    return hist

# print(feature_matrix)
# plt.hist(feature_matrix.ravel(), bins=256, range=(0, 255), fc='k', ec='k')
# plt.show()

# cv2.imshow('mask',mask)
# cv2.imshow('res',res)
# cv2.imshow("original", res_fil)

# plt.show()
# cv2.waitKey(0)
# cv2.destroyAllWindows()