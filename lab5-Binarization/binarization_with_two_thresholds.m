clearvars
close all
clc

image = imread("bart.bmp");

figure('Name','Binarization with two thresholds','NumberTitle','off');

subplot(1,3,1);
imshow(image);
title("Input image");
subplot(1,3,2);
imhist(image);
title("Histogram of input image");

subplot(1,3,3);
lowerThreshold = 145;
upperThreshold = 225;
imageBW = image > lowerThreshold & image < upperThreshold;
imageBW = uint8(imageBW);
imshow(imageBW, []);
title("Binarization with two thresholds");