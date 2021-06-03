clearvars
close all
clc

image = imread("board.png");

%3x3
figure('Name','Averaging filter','NumberTitle','off');
filter = fspecial('average',3);
a = conv2(image,filter,'same');
a = uint8(a);
subplot(1,3,1);
imshow(image);
title("Original");

subplot(1,3,2);
imshow(a);
title("Averaging filter (3x3)");

subplot(1,3,3);
absDiff = imabsdiff(image,a);
imshow(absDiff,[]);
title("Absolute difference");

%5x5
figure('Name','Averaging filter','NumberTitle','off');
filter = fspecial('average',5);
a = conv2(image,filter,'same');
a = uint8(a);
subplot(1,3,1);
imshow(image);
title("Original");

subplot(1,3,2);
imshow(a);
title("Averaging filter (5x5)");

subplot(1,3,3);
absDiff = imabsdiff(image,a);
imshow(absDiff,[]);
title("Absolute difference");

%9x9
figure('Name','Averaging filter','NumberTitle','off');
filter = fspecial('average',9);
a = conv2(image,filter,'same');
a = uint8(a);
subplot(1,3,1);
imshow(image);
title("Original");

subplot(1,3,2);
imshow(a);
title("Averaging filter (9x9)");

subplot(1,3,3);
absDiff = imabsdiff(image,a);
imshow(absDiff,[]);
title("Absolute difference");

%15x15
figure('Name','Averaging filter','NumberTitle','off');
filter = fspecial('average',15);
a = conv2(image,filter,'same');
a = uint8(a);
subplot(1,3,1);
imshow(image);
title("Original");

subplot(1,3,2);
imshow(a);
title("Averaging filter (15x15)");

subplot(1,3,3);
absDiff = imabsdiff(image,a);
imshow(absDiff,[]);
title("Absolute difference");

%35x35
figure('Name','Averaging filter','NumberTitle','off');
filter = fspecial('average',35);
a = conv2(image,filter,'same');
a = uint8(a);
subplot(1,3,1);
imshow(image);
title("Original");

subplot(1,3,2);
imshow(a);
title("Averaging filter (35x35)");

subplot(1,3,3);
absDiff = imabsdiff(image,a);
imshow(absDiff,[]);
title("Absolute difference");

%appropriate kernel section
M = [1 2 1; 2 4 2; 1 2 1];
M = M/sum(sum(M));
figure('Name','Appropriate kernel section','NumberTitle','off');
filter = M;
a = conv2(image,filter,'same');
a = uint8(a);
subplot(1,3,1);
imshow(image);
title("Original");

subplot(1,3,2);
imshow(a);
title("Appropriate kernel section");

subplot(1,3,3);
absDiff = imabsdiff(image,a);
imshow(absDiff,[]);
title("Absolute difference");

%gaussian filter, deviation = 0.5
figure('Name','Gaussian filter, deviation = 0.5','NumberTitle','off');
filter = fspecial('gaussian',5,0.5);
a = conv2(image,filter,'same');
a = uint8(a);
subplot(1,3,1);
imshow(image);
title("Original");

subplot(1,3,2);
imshow(a);
title("Gaussian filter, deviation = 0.5");

subplot(1,3,3);
mesh(filter);
title("Mesh of filter");

%gaussian filter, deviation = 0.2
figure('Name','Gaussian filter, deviation = 0.2','NumberTitle','off');
filter = fspecial('gaussian',5,0.2);
a = conv2(image,filter,'same');
a = uint8(a);
subplot(1,3,1);
imshow(image);
title("Original");

subplot(1,3,2);
imshow(a);
title("Gaussian filter, deviation = 0.2");

subplot(1,3,3);
mesh(filter);
title("Mesh of filter");

%gaussian filter, deviation = 0.8
figure('Name','Gaussian filter, deviation = 0.8','NumberTitle','off');
filter = fspecial('gaussian',5,0.8);
a = conv2(image,filter,'same');
a = uint8(a);
subplot(1,3,1);
imshow(image);
title("Original");

subplot(1,3,2);
imshow(a);
title("Gaussian filter, deviation = 0.8");

subplot(1,3,3);
mesh(filter);
title("Mesh of filter");