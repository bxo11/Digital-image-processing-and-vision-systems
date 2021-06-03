close all
clearvars
clc

image = imread("bone.bmp");

figure(1);
subplot(1,2,1);
imshow(image);
title('Input image')
subplot(1,2,2);
image = bwmorph(image,'skel',Inf);
imshow(image);
title('Image after skeletonization')

