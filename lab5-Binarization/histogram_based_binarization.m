clearvars
close all
clc

image = imread("coins.png");

figure('Name','Histogram and binarization','NumberTitle','off');
subplot(1,2,1)
imhist(image);
title("Histogram of original image");
subplot(1,2,2)
bw = im2bw(image,0.4); 
imshow(bw);
title("Image after binarization, threshold = 0.4");

%4 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
shape1 = imread("shape1.png");
shape2 = imread("shape2.png");
shape3 = imread("shape3.png");
shape4 = imread("shape4.png");

figure('Name','Shape 1','NumberTitle','off');
subplot(1,2,1)
imhist(shape1);
title("Histogram of original image(shape1.png)");
subplot(1,2,2)
bw = im2bw(shape1,0.4); 
imshow(bw);
title("Image after binarization, threshold = 0.4");

figure('Name','Shape 2','NumberTitle','off');
subplot(1,2,1)
imhist(shape2);
title("Histogram of original image(shape2.png)");
subplot(1,2,2)
bw = im2bw(shape2,0.4); 
imshow(bw);
title("Image after binarization, threshold = 0.4");

figure('Name','Shape 3','NumberTitle','off');
subplot(1,2,1)
imhist(shape3);
title("Histogram of original image(shape3.png)");
subplot(1,2,2)
bw = im2bw(shape3,0.4); 
imshow(bw);
title("Image after binarization, threshold = 0.4");

figure('Name','Shape 4','NumberTitle','off');
subplot(1,2,1)
imhist(shape4);
title("Histogram of original image(shape4.png)");
subplot(1,2,2)
bw = im2bw(shape4,0.2); 
imshow(bw);
title("Image after binarization, threshold = 0.2");

%5 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure('Name','Otsu and manually selection','NumberTitle','off');
subplot(1,2,1)
level = graythresh(image);
bw = im2bw(image,level);
imshow(bw);
title("Otsu level selection, threshold = " + level);
subplot(1,2,2)
bw = im2bw(image,0.4); 
imshow(bw);
title("Manual selection, threshold = 0.4");

%6/7/8 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

image = imread("catalogue.bmp");

figure('Name','Kittle/Yen','NumberTitle','off');
subplot(1,6,1)
imshow(image)
title("Input image");
subplot(1,6,2)
imhist(image)
title("Histogram of input image");
subplot(1,6,3)
level = 0.4;
bw = im2bw(image,level); 
imshow(bw);
title("Manual selection, threshold = " + level);
subplot(1,6,4)
level = graythresh(image);
bw = im2bw(image,level);
imshow(bw);
title("Otsu level selection, threshold = " + level);
subplot(1,6,5)
Kit = clusterKittler(image);
bw = im2bw(image,Kit/255); 
imshow(bw);
title("Kittler, threshold = " + Kit);
subplot(1,6,6)
Yen = entropyYen(image);
bw = im2bw(image,Yen/255); 
imshow(bw);
title("Yen, threshold = " + Yen);