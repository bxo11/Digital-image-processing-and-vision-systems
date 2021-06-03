clearvars
close all
clc

image = imread("moon.png");

%laplacian mask
figure('Name','Laplacian','NumberTitle','off');
M = [ 0 1 0; 1 -4 1; 0 1 0];
M = M./9;
filter = M;
a = conv2(image,filter,'same');
a = uint8(a);
subplot(1,3,1);
imshow(image);
title("Original");

subplot(1,3,2);
b = a + 128;
imshow(b,[]);
title("Adding 128 to each pixel");

subplot(1,3,3);
c = abs(a);
imshow(c,[]);
title("Absolute value");

%laplacian kernel - sharpening
figure('Name','Laplacian filter','NumberTitle','off');
filter = fspecial('laplacian');
a = conv2(image,filter,'same');
a = uint8(a);
subplot(1,3,1);
imshow(image);
title("Original");

subplot(1,3,2);
b = image + a;
imshow(b,[]);
title("Adding laplacian filter");

subplot(1,3,3);
c = image - a;
imshow(c,[]);
title("Substracting laplacian filter");

