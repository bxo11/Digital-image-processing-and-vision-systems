close all
clearvars
clc

image = imread("rice.png");

figure(1);
subplot(1,2,1);
imshow(image);
title('Input image')
subplot(1,2,2);
se = strel('disk',15);
image2 = imtophat(image,se);
imshow(image2);
title('Image after top-hat operation');
