clearvars
close all
clc

image = imread("squares.bmp");
load masks;

%R1
figure('Name','Roberts gradient','NumberTitle','off');
filter = R1;
a = conv2(image,filter,'same');
a = uint8(a);
subplot(1,3,1);
imshow(image);
title("Original");

subplot(1,3,2);
b = a + 128;
imshow(b,[]);
title("Adding 128 to each pixel (R1)");

subplot(1,3,3);
c = abs(a);
imshow(c,[]);
title("Absolute value (R1)");

%R2
figure('Name','Roberts gradient','NumberTitle','off');
filter = R2;
a = conv2(image,filter,'same');
a = uint8(a);
subplot(1,3,1);
imshow(image);
title("Original");

subplot(1,3,2);
b = a + 128;
imshow(b,[]);
title("Adding 128 to each pixel (R2)");

subplot(1,3,3);
c = abs(a);
imshow(c,[]);
title("Absolute value (R2)");

%P1
figure('Name','Prewitt gradient','NumberTitle','off');
filter = P1;
a = conv2(image,filter,'same');
a = uint8(a);
subplot(1,3,1);
imshow(image);
title("Original");

subplot(1,3,2);
b = a + 128;
imshow(b,[]);
title("Adding 128 to each pixel (P1)");

subplot(1,3,3);
c = abs(a);
imshow(c,[]);
title("Absolute value (P1)");

%P2
figure('Name','Prewitt gradient','NumberTitle','off');
filter = P2;
a = conv2(image,filter,'same');
a = uint8(a);
subplot(1,3,1);
imshow(image);
title("Original");

subplot(1,3,2);
b = a + 128;
imshow(b,[]);
title("Adding 128 to each pixel (P2)");

subplot(1,3,3);
c = abs(a);
imshow(c,[]);
title("Absolute value (P2)");

%S1
figure('Name','Sobel gradient','NumberTitle','off');
filter = S1;
a = conv2(image,filter,'same');
a = uint8(a);
subplot(1,3,1);
imshow(image);
title("Original");

subplot(1,3,2);
b = a + 128;
imshow(b,[]);
title("Adding 128 to each pixel (S1)");

subplot(1,3,3);
c = abs(a);
imshow(c,[]);
title("Absolute value (S1)");

%S2
figure('Name','Sobel gradient','NumberTitle','off');
filter = S2;
a = conv2(image,filter,'same');
a = uint8(a);
subplot(1,3,1);
imshow(image);
title("Original");

subplot(1,3,2);
b = a + 128;
imshow(b,[]);
title("Adding 128 to each pixel (S2)");

subplot(1,3,3);
c = abs(a);
imshow(c,[]);
title("Absolute value (S2)");