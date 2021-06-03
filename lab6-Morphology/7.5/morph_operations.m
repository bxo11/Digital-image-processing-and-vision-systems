close all
clearvars
clc

image = imread("ferrari.bmp");

figure(1);
subplot(2,3,1);
imshow(image);
title('Input image')
subplot(2,3,2);
se = strel('square',3);
image2 = imerode(image,se);
imshow(image2);
title('Image after erosion');
subplot(2,3,3);
se = strel('square',3);
image3 = imdilate(image,se);
imshow(image3);
title('Image after dilation');
subplot(2,3,4:6);
basic_gradient = imdilate(image, se) - imerode(image, se);
imshow(basic_gradient);
title('Morphological gradient');

figure(2);
subplot(1,3,1);
imshow(image);
title('Input image')
subplot(1,3,2);
se = strel('square',3);
image2 = imopen(image,se);
imshow(image2);
title('Image after morphological open');
subplot(1,3,3);
image3 = imclose(image,se);
imshow(image3);
title('Image after morphological close');

