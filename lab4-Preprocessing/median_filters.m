clearvars
close all
clc

image = imread("lenaNoise.bmp");

%median filtering lenaNoise
figure('Name','Median filter','NumberTitle','off');
a = medfilt2(image);
a = uint8(a);
subplot(1,3,1);
imshow(image);
title("Original");

subplot(1,3,2);
imshow(a);
title("Median filter (3x3)");

subplot(1,3,3);
absDiff = imabsdiff(image,a);
imshow(absDiff,[]);
title("Absolute difference");

%median and averaging filtering lena
image = imread("lena.bmp");

figure('Name','Median & averaging filter','NumberTitle','off');
a = medfilt2(image);
a = uint8(a);
subplot(2,3,1);
imshow(image);
title("Original");

subplot(2,3,2);
imshow(a);
title("Median filter (3x3)");

subplot(2,3,3);
absDiff = imabsdiff(image,a);
imshow(absDiff,[]);
title("Absolute difference");
%%%
filter = fspecial('average',3);
a = conv2(image,filter,'same');
a = uint8(a);
subplot(2,3,4);
imshow(image);
title("Original");

subplot(2,3,5);
imshow(a);
title("Averaging filter (3x3)");

subplot(2,3,6);
absDiff = imabsdiff(image,a);
imshow(absDiff,[]);
title("Absolute difference");

%loop x10 median filtering lena
image = imread("lena.bmp");

figure('Name','Posterization x10','NumberTitle','off');

for i=1:10
a = medfilt2(image,[5 5]);
a = uint8(a);
end

subplot(1,3,1);
imshow(image);
title("Original");

subplot(1,3,2);
imshow(a);
title("Posterization x10");

subplot(1,3,3);
absDiff = imabsdiff(image,a);
imshow(absDiff,[]);
title("Absolute difference");
