close all
clearvars
clc

image = imread("ertka.bmp");

figure(1);
se = strel('square',3);
erodedIm = imerode(image,se);
subplot(1,2,1);
imshow(image);
title('Input image')
subplot(1,2,2);
imshow(erodedIm);
title('Image after erosion, SE = square 3x3')

figure(2);
se = strel('cube',5);
erodedIm = imerode(image,se);
subplot(1,2,1);
imshow(image);
title('Input image')
subplot(1,2,2);
imshow(erodedIm);
title('Image after erosion, SE = cube 5x5x5')

figure(3);
se = strel('diamond',4);
erodedIm = imerode(image,se);
subplot(1,2,1);
imshow(image);
title('Input image')
subplot(1,2,2);
imshow(erodedIm);
title('Image after erosion, SE = diamond r=4')

figure(4);
se = strel('square',3);
subplot(1,4,1);
imshow(image);
title('Input image')
subplot(1,4,2);
erodedIm = imerode(image,se);
imshow(erodedIm);
title('Image after 1x erosion, SE = square 3x3')
subplot(1,4,3);
erodedIm = imerode(erodedIm,se);
imshow(erodedIm);
title('Image after 2x erosion, SE = square 3x3')
subplot(1,4,4);
erodedIm = imerode(erodedIm,se);
imshow(erodedIm);
title('Image after 3x erosion, SE = square 3x3')