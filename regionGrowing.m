clc;
close all;

global output
global checked
global im

im = imread('twofaces.jpg');
imshow(im);
%pause
im2 = rgb2gray(im);
imshow(im2);
hist = figure, surf(im2), shading flat
saveas(hist, 'histogram.png');

I = insertShape(im2, 'circle', [33 73 1], 'LineWidth',3);
%imshow(I);

%seeds =[40, 20];[50, 23]; [50, 42]; [64, 32]; [67, 32]; [67, 36]; [73, 33]; 
seeds = [[40 30]];

threshold = 20;
[h, w] = size(im2);

output = zeros(h, w, 3);


checked = zeros(h,w);

for index = 1:numel(seeds)
    %regionGrow(seeds(index,:), im2, threshold);
end

imwrite(output, 'result2.png')

