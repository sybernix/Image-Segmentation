function regionGrow( seed, image, threshold)
    global output
    global checked
    global im
    
    x = seed(1);
    y = seed(2);
    
    if (checked(x,y)==0)
        [h, w] = size(image);
        %disp(seed);
        checked(x, y) = 1;
        imshow(mat2gray(output));
        output(x,y,:) = im(x,y,:);

        if (x-1>0)
            if (abs(image(x, y)-image(x-1,y))<threshold)
                %output(x-1,y)=-2;
                newSeed = [x-1, y];
                regionGrow(newSeed, image, threshold);
            end
        end
        if (x+1<=h)
            if (abs(image(x, y)-image(x+1,y))<threshold)
                %output(x+1,y)=-2;
                newSeed = [x+1, y];
                regionGrow(newSeed, image, threshold);
            end
        end
        if (y-1>0)
            if (abs(image(x, y)-image(x,y-1))<threshold)
                %output(x,y-1)=-2;
                newSeed = [x, y-1];
                regionGrow(newSeed, image, threshold);
            end
        end
        if (y+1<=w)
            if (abs(image(x, y)-image(x,y+1))<threshold)
                %output(x,y+1)=-2;
                newSeed = [x, y+1];
                regionGrow(newSeed, image, threshold);
            end
        end
    end
end
