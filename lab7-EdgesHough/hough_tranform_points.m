close all
clearvars
clc

image = zeros(11,11);

figure(1);
subplot(1,2,1);
image(5,4) = 1;
imshow(image);
title('Input image')
subplot(1,2,2);
[H,theta,rho] = hough(image,'RhoResolution',0.1,'ThetaResolution',0.5);
imshow(H,[]);
title('Hough',[])


figure(2);
subplot(1,2,1);
image(5,4) = 1;
image(9,8) = 1;
imshow(image);
title('Input image')
subplot(1,2,2);
[H,theta,rho] = hough(image,'RhoResolution',0.1,'ThetaResolution',0.5);
imshow(H,[]);
title('Hough',[])

figure(3);
subplot(1,2,1);
image(5,4) = 1;
image(9,8) = 1;
image(1,2) = 1;
image(5,11) = 1;
imshow(image);
title('Input image')
subplot(1,2,2);
[H,theta,rho] = hough(image,'RhoResolution',0.1,'ThetaResolution',0.5);
imshow(H);
title('Hough',[])

figure(4);
subplot(1,2,1);
O=theta(90);
p=rho(135);
x = 0:0.1:10;
y =(p-x*cosd(O))/sind(O);
imshow(image);
hold on;
plot(x+1,y+1);
