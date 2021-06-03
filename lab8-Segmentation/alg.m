close all
clearvars
clc

image = imread("knee.png");
%image = rgb2gray(image);
subplot(1,2,1)
imshow(image);
title("Input image");
thresh = 4;
[s_x,s_y] = ginput(1);
s_x = round(s_x);
s_y = round(s_y);
hold on;
plot(s_x,s_y,'d','color',[1 1 0]);
image = double(image);
[n,m] = size(image);
visited = zeros(n,m);
segmented = zeros(n,m);
fQueue = 1;
lQueue = 2;
queue = zeros(10000,2);

%add to queue
queue(fQueue,1)=s_x;
queue(fQueue,2)=s_y;

%mark as visited and segmented
segmented(s_y,s_x)=1;
visited(s_y,s_x)=1;

while(fQueue < lQueue)
    %queue pop
    x = queue(fQueue,1);
    y = queue(fQueue,2);
    fQueue = fQueue + 1;
    
    if x > m-1 || y > m-1 || x < 2 || y < 2
        continue
    end
    
    for i=-1:1:1
       for j=-1:1:1   
           temp_x = x + i;
           temp_y = y + j;
           diff = abs(image(y,x) - image(temp_y,temp_x));
           if diff < thresh && visited(temp_y,temp_x)==0
                queue(lQueue,1) = temp_x;
                queue(lQueue,2) = temp_y;
                lQueue = lQueue + 1;
                segmented(temp_y,temp_x)=1;
           end
               %mark as visited
               visited(temp_y,temp_x)=1;
       end
    end
end

subplot(1,2,2);
imshow(segmented);
title("[x,y] = [" + s_x + ","+s_y+"], threshold = " + thresh);