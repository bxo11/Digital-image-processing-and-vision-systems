close all
clearvars
clc

image = imread("text.bmp");

figure(1);
subplot(1,2,1);
imshow(image);
title('Input image')
subplot(1,2,2);
image2 = imclearborder(image);
imshow(image2);
title('Image after clearing the border');



