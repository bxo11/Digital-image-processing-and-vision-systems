close all;
f1 = figure;

infoLenaBMP = imfinfo('lena.bmp');
infoLenaJPG = imfinfo('lena.jpg');

L = imread('lena.bmp');
imshow(L);

f2 = figure;
Lgray = rgb2gray(L);
imshow(Lgray);
imwrite(Lgray,'LenaGray.bmp');

f3 = figure;
mesh(Lgray);

f4 = figure;
plot(Lgray(100, :))

f5 = figure;
plot(Lgray(:, 100))

f6 = figure;
[X, map] = gray2ind(Lgray, 256);
imshow(X, map);

f7 = figure;
map = colormap;
imshow(X, map);

f8 = figure;
R = L(:,:, 1); G = L(:,:, 2); B = L(:,:, 3);

subplot (2,2,1), imshow (L), title ('Original');
subplot (2,2,2), imshow (R), title ('R');
subplot (2,2,3), imshow (G), title ('G');
subplot (2,2,4), imshow (B), title ('B');