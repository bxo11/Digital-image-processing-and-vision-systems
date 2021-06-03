clearvars
close all
clc

load functionsLUT.mat;
jet = imread("jet.bmp");

figure('Name','log','NumberTitle','off');
LUT(jet,log);

figure('Name','square','NumberTitle','off');
LUT(jet,square);

figure('Name','invlog','NumberTitle','off');
LUT(jet,invlog);

figure('Name','inverse','NumberTitle','off');
LUT(jet,inverse);

figure('Name','squareroot','NumberTitle','off');
LUT(jet,squareroot);

figure('Name','saw','NumberTitle','off');
LUT(jet,saw);

figure('Name','exponential','NumberTitle','off');
LUT(jet,exponential);

