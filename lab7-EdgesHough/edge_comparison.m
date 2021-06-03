close all
clearvars
clc

image = imread("house.png");

figure(1);
subplot(1,3,1);
edge1 = edge(image,'sobel',0.13);
imshow(edge1);
title('sobel, thresh:0.13')
subplot(1,3,2);
edge1 = edge(image,'log',0.009);
imshow(edge1);
title('LoG, thresh:0.009')
subplot(1,3,3);
edge1 = edge(image,'canny',[0.011 0.30]);
imshow(edge1);
title('canny, thresh:[0.011 0.30]')