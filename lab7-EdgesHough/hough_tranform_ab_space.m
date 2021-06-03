close all
clearvars
clc

image = zeros(11,11);

figure(1);
subplot(1,2,1);
image(5,4) = 1;
image(8,7) = 1;
imshow(image);
title('Input image')
subplot(1,2,2);
[H] = ab_space(image,0,5,1,0,5,1);
imshow(H,[]);

title('Hough')

