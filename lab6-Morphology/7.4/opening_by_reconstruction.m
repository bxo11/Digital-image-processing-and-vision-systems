close all
clearvars
clc

image = imread("text.bmp");

figure(1);
subplot(1,3,1);
imshow(image);
title('Input image')
subplot(1,3,2);
se = ones(51,1);
image2 = imopen(image,se);
imshow(image2);
title('Image after morphological open');
subplot(1,3,3);
image3 = imreconstruct(image2,image);
imshow(image3);
title('Image after reconstruction')


