close all
clearvars
clc

image = imread("hom.bmp");

figure(1);
SE1 = [0 1 0; 1 1 1; 0 1 0];
SE2 = [1 0 1; 0 0 0; 1 0 1];
subplot(1,2,1);
imshow(image);
title('Input image')
subplot(1,2,2);
image = bwhitmiss(image,SE1,SE2);
imshow(image);
title('Image after hit-miss transformation')
