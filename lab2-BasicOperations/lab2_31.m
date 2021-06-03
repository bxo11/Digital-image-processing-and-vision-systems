clearvars
close all
clc

lena = imread("lena.bmp");
jet = imread("jet.bmp");
mask = imread("circle.bmp");

figure('Name','Original','NumberTitle','off');
subplot(1,2,1);
imshow(lena);
subplot(1,2,2);
imshow(jet);

figure('Name','Addition','NumberTitle','off');
subplot(1,2,1);
Add = imadd(lena,jet);
imshow(Add);
subplot(1,2,2);
Add = imadd(lena,jet,'uint16');
imshow(Add,[]);

figure('Name','Linear combination','NumberTitle','off');
subplot(2,4,1);
Lin = imlincomb(1,lena,1,jet,'uint16');
imshow(Lin,[]);
subplot(2,4,2);
Lin = imlincomb(1.5,lena);
imshow(Lin);
subplot(2,4,3);
Lin = imlincomb(0.5,lena);
imshow(Lin);
subplot(2,4,4);
J = uint8(filter2(fspecial('gaussian'), lena));
Lin = imlincomb(1,lena,-1,J,64);
imshow(Lin,[]);

subplot(2,4,5);
Lin = imlincomb(1,jet,1,lena,'uint16');
imshow(Lin,[]);
subplot(2,4,6);
Lin = imlincomb(1.5,jet);
imshow(Lin);
subplot(2,4,7);
Lin = imlincomb(0.5,jet);
imshow(Lin);
subplot(2,4,8);
J = uint8(filter2(fspecial('gaussian'), jet));
Lin = imlincomb(1,jet,-1,J,128);
imshow(Lin,[]);

figure('Name','Substraction','NumberTitle','off');
subplot(3,2,1);
Sub = imsubtract(jet,lena);
imshow(Sub);
subplot(3,2,2);
Sub = imsubtract(lena,jet);
imshow(Sub);

lena16 = int16(lena);
jet16 = int16(jet);

subplot(3,2,3);
Sub = imsubtract(jet16,lena16);
imshow(Sub,[]);
subplot(3,2,4);
Sub = imsubtract(lena16,jet16);
imshow(Sub,[]);

subplot(3,2,5);
Sub = imabsdiff(jet,lena);
imshow(Sub,[]);
subplot(3,2,6);
Sub = imabsdiff(lena,jet);
imshow(Sub,[]);

figure('Name','Multiplication','NumberTitle','off');
subplot(3,1,1);
Mult = immultiply(lena,2);
imshow(Mult);
subplot(3,1,2);
mask = logical(mask);
Mult = immultiply(lena,mask);
imshow(Mult);
subplot(3,1,3);
mask = logical(mask);
Mult = immultiply(jet,mask);
imshow(Mult);

figure('Name','Negation','NumberTitle','off');
subplot(2,1,1);
Negation = imcomplement(lena);
imshow(Negation);
subplot(2,1,2);
Negation = imcomplement(jet);
imshow(Negation);