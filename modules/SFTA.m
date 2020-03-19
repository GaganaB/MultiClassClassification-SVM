function [ D ] = sfta( I,nt )

    I=imread('image.jpg');%to read image
    I = im2uint8(I); %to convert image to 8 bit unsigned int 
    if size(I,3) ~= 1 % if image size is not equal to 1 then end function sfta
    end;
    
    I = rgb2gray(I); %conversion of rgb image to grayscale
    %since sfta works on greyscale images as per given algorithm
    display('here')
    T = otsurec( I, nt ); %calling funtion of otsu algorithm
    % compute set of thresholds of input image
    dSize = numel(T) * 6; %extraction of 6*nt of input gryscale image
    D = zeros(1, dSize); %initialisation od matrix D with 0
    pos = 1; %initialisation of position to 1
    for t = 1 : numel(T) % iterate over the total matrix T
        
        %threshold computation
        thresh = T(t);  
        Ib = findBorders(Ib);  %function which Returns an binary image with the regions' boundaries 
        vals = double(I(Ib));
        
        D(pos) = hd(Ib); %calling function hd
        pos = pos + 1;
        
        D(pos) = mean(vals);
        pos = pos + 1;
                
        D(pos) = numel(vals);
        pos = pos + 1;
       
    end;
    
    T = [T; 1.0];
    range = getrangefromclass(I);
    range = range(2);
    
    for t = 1 : (numel(T) - 1)
        lowerThresh = T(t); %lower threshold computation 
        upperThresh = T(t + 1); %upper threshold computation 
            
        %check/test the threshold range 
        Ib = findBorders(Ib); %calling the find borders function
        
        vals = double(I(Ib));
        
        D(pos) = hd(Ib);%calling function hd
        pos = pos + 1;
        
        D(pos) = mean(vals);
        pos = pos + 1;

        D(pos) = numel(vals);
        pos = pos + 1;
        display (double(D))
    
    end
