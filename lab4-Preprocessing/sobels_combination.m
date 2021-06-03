clearvars
close all
clc

image = imread("jet.bmp");
load masks;

%Sobels combination
figure('Name','Sobels combination','NumberTitle','off');
subplot(1,3,1);
imshow(image);
title("Original");

subplot(1,3,2);
OI = sqrt((conv2(image,S1)).^2 + (conv2(image,S2)).^2);
imshow(OI, []);
title("Square root");

subplot(1,3,3);
OI = (conv2(image,S1)).^2 + (conv2(image,S2)).^2;
imshow(OI, []);
title("Square sum");
