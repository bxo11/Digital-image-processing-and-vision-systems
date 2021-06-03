close all
clearvars
clc

image = imread("fingerprint.bmp");

figure(1);
subplot(2,3,1);
imshow(image);
title('Input image')
subplot(2,3,2);
image = bwmorph(image,'thin');
imshow(image);
title('Image after thinning')
subplot(2,3,3);
image = bwmorph(image,'thin');
imshow(image);
title('Image after thinning x2')
subplot(2,3,4);
image = bwmorph(image,'thin');
imshow(image);
title('Image after thinning x3')
subplot(2,3,5);
image = bwmorph(image,'thin');
imshow(image);
title('Image after thinning x4')
subplot(2,3,6);
image = bwmorph(image,'thin');
imshow(image);
title('Image after thinning x5')

