close all
clearvars
clc

image = imread("house.png");

figure(1);
subplot(1,2,1);
imshow(image);
title('Input image')
subplot(1,2,2);
edge1 = edge(image,'canny',[0.01 0.30]);
imshow(edge1);
title('canny, thresh:[0.01 0.30]')