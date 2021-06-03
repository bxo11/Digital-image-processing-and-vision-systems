close all
clearvars
clc

image = imread("ertka.bmp");

figure(1);
se = strel('square',3);
erodedIm = imdilate(image,se);
subplot(1,2,1);
imshow(image);
title('Input image')
subplot(1,2,2);
imshow(erodedIm);
title('Image after dilation, SE = square 3x3')

