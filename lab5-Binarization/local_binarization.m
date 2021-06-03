clearvars
close all
clc

image = imread("catalogue.bmp");
imageBW = image;

%%% 1-7 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure('Name','Local binarization','NumberTitle','off');
[X, Y] = size(image);
W2 = 250;

for i = 1:X
    for j = 1:Y
        if imageBW(i,j) > meanLT(i,j,W2,image,X,Y)
            imageBW(i,j) = 255;
        else
            imageBW(i,j) = 0;
        end
    end
end

subplot(1,2,1)
imshow(image);
title("Input image");
subplot(1,2,2)
imshow(imageBW);
title("Image after local binarization, W2 = " + W2);