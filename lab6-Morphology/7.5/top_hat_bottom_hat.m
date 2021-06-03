close all
clearvars
clc

image = imread("ferrari.bmp");

figure(1);
subplot(1,3,1);
imshow(image);
title('Input image')
subplot(1,3,2);
se = strel('square',3);
image2 = imtophat(image,se);
imshow(image2);
title('Image after top-hat operation');
subplot(1,3,3);
se = strel('square',3);
image3 = imbothat(image,se);
imshow(image3);
title('Image after bottom-hat operation');