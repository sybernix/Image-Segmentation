clc;
close all;
im = imread('car.jpg');
imshow(im);

threshold = 160;

imGray = rgb2gray(im);
imshow(imGray);

hist = figure;
imhist(imGray);
saveas(hist, 'histogram.png');

[h, w] = size(imGray);

thresholdedImGray = zeros(h,w);

for i=1:h
    for j=1:w
        if (imGray(i, j) > threshold)
            thresholdedImGray(i, j) = imGray(i, j);
        end
    end
end
thresholdedImGray = mat2gray(thresholdedImGray);
figure;
imshow(thresholdedImGray);
imwrite(thresholdedImGray, 'thresholdedIm.png');