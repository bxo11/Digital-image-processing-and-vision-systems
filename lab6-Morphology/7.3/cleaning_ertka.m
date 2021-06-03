close all
clearvars
clc

image = imread("ertka.bmp");

figure(1);
se = strel('square',3);
ertka = imopen(image,se);
se = strel('square',5);
ertka = imdilate(ertka,se);
subplot(1,2,1);
imshow(image);
title('Input image')
subplot(1,2,2);
imshow(ertka);
title('Image after morphologically open(SE=square3x3) and dilation(SE=square5x5)')

