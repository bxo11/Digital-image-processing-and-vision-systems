clearvars
close all
clc

load functionsLUT.mat;
figure(1);
plot(square);

figure(2);
jet = imread("jet.bmp");
imshow(jet);

figure(3);
B = intlut(jet,square);
imshow(B);
