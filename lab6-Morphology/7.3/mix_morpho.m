close all
clearvars
clc

image = imread("ertka.bmp");

figure(1);
se = strel('square',3);
subplot(2,3,1:2);
imshow(image);
title('Input image')
subplot(2,3,3);
erodedIm = imerode(image,se);
imshow(erodedIm);
title('Image after erosion, SE = square 3x3')
subplot(2,3,4);
erodedIm = imdilate(image,se);
imshow(erodedIm);
title('Image after dilation, SE = square 3x3')
subplot(2,3,5);
erodedIm = imopen(image,se);
imshow(erodedIm);
title('Image after morphologically open, SE = square 3x3')
subplot(2,3,6);
erodedIm = imclose(image,se);
imshow(erodedIm);
title('Image after morphologically close, SE = square 3x3')
