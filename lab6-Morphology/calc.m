close all
clearvars
clc

image = imread("calculator.bmp");

figure(1);
subplot(2,3,1);
imshow(image);
title('Input image')
subplot(2,3,2);
se = ones(1,71);
image_e = imerode(image,se);
imshow(image_e);
title('Image after erosion');
subplot(2,3,3);
se = ones(1,71);
image_o = imopen(image,se);
imshow(image_o);
title('Image after morphological open');
subplot(2,3,5);
image3 = imreconstruct(image_e,image);
imshow(image3);
title('Image after reconstruction(erosion)')
subplot(2,3,6);
image4 = imreconstruct(image_o,image);
imshow(image4);
title('Image after reconstruction(open)')

figure(2);
subplot(1,2,1);
image5 = image-image3;
imshow(image5);
title('Result of inputImage - reconstructedImage(erosion)')
subplot(1,2,2);
image5 = image-image4;
imshow(image5);
title('Result of inputImage - reconstructedImage(open)')

figure(3);
se = ones(1,71);
image2 = imtophat(image,se);
imshow(image2);
title('Image after top-hat operation');