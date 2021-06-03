clearvars
close all
clc

image = imread("catalogue.bmp");
imageBW = image;
p_imageBW_improved = image;
m_imageBW_improved = image;

%%% 8 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure('Name','Improved local binarization','NumberTitle','off');
[X, Y] = size(image);
W2 = 128;
k = 0.30;
R = 128;

for i = 1:X
    for j = 1:Y
        mean = meanLT(i,j,W2,image,X,Y);
        stddev = stddevLT(i,j,W2,image,mean,X,Y);
        T_p = mean * (1 + k*(stddev/R - 1));
        T_m = mean * (1 - k*(stddev/R - 1));
        
        if image(i,j) > T_p
            p_imageBW_improved(i,j) = 255;
        else
            p_imageBW_improved(i,j) = 0;
        end
        
        if image(i,j) > T_m
            m_imageBW_improved(i,j) = 255;
        else
            m_imageBW_improved(i,j) = 0;
        end
        
        if image(i,j) > mean
            imageBW(i,j) = 255;
        else
            imageBW(i,j) = 0;
        end
    end
end

subplot(1,4,1)
imshow(image);
title("Input image");
subplot(1,4,2)
imshow(imageBW);
title("Image after local binarization, W2 = " + W2);
subplot(1,4,3)
imshow(p_imageBW_improved);
title("Image after local improved binarization(+)," + newline + "W2 = " + W2 + ", k = " + k + ", R = " + R);
subplot(1,4,4)
imshow(m_imageBW_improved);
title("Image after local improved binarization(-)," + newline + "W2 = " + W2 + ", k = " + k + ", R = " + R);