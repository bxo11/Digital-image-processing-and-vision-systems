function LUT(image,reencoding)
A = intlut(image,reencoding);
subplot(1,3,1);
plot(reencoding);
subplot(1,3,2);
imshow(image);
subplot(1,3,3);
imshow(A);
end

