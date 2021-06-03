close all
clearvars
clc

image = imread("squares.png");

figure(1);
subplot(1,2,1);
imshow(image);
title('Input image')
subplot(1,2,2);
edge1 = edge(image,'canny');
imshow(edge1);
title('canny');

figure(2);
subplot(1,2,1);
[H,T,R] = hough(edge1);
imshow(H,[]);
title('Hough space')
subplot(1,2,2);
P = houghpeaks(H,10);
imshow(H,[]);
hold on;
plot(P(:,2),P(:,1),'o');
title('Hough peaks')

lines = houghlines(edge1,T,R,P,'FillGap',5,'MinLength',7);
figure, imshow(edge1), hold on
max_len = 0;
for k = 1:length(lines)
   xy = [lines(k).point1; lines(k).point2];
   plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green');

   plot(xy(1,1),xy(1,2),'x','LineWidth',2,'Color','yellow');
   plot(xy(2,1),xy(2,2),'x','LineWidth',2,'Color','red');

   len = norm(lines(k).point1 - lines(k).point2);
   if ( len > max_len)
      max_len = len;
      xy_long = xy;
   end
end
title('Hough lines')