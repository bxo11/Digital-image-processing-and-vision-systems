close all
clearvars
clc

image = imread("house.png");

figure(1);
subplot(1,3,1);
imshow(image);
title('Input image')
subplot(1,3,2);
edge1 = edge(image,'log');
imshow(edge1);
title('LoG')
subplot(1,3,3);
h = fspecial('log');
edge1 = edge(image,'zerocross',[],h);
imshow(edge1);
title('zerocross, filter = log')