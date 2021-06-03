close all
clearvars
clc

image = imread("face.bmp");

figure(1);
se = ones(4,4);
se = triu(se);
erodedIm = imerode(image,se);
subplot(1,2,1);
imshow(image);
title('Input image')
subplot(1,2,2);
imshow(erodedIm);
title('Image after erosion, SE = matrix 4x4 filled with 1 and 0')


