clearvars
close all
clc

circle = imread("circle.bmp");
square = imread("square.bmp");
circle = logical(circle);
square = logical(square);

figure('Name','Logical operations','NumberTitle','off');
subplot(5,1,1);
output = and(circle,square);
imshow(output);
subplot(5,1,2);
output = or(circle,square);
imshow(output);
subplot(5,1,3);
output = not(circle);
imshow(output);
subplot(5,1,4);
output = not(square);
imshow(output);
subplot(5,1,5);
output = xor(circle,square);
imshow(output);