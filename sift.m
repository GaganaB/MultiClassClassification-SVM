row=256;
colum=256;
img=imread('images.jpg');
img=imresize(img,[row,colum]);
img=rgb2gray(img);
img=im2double(img);
origin=img;
%% Scale-Space Extrema Detection
f=fspecial('gaussian',[1,floor(6*scale)],scale);
%% Keypoint Localistaion
%eliminate the point with low contrast or poorly localised on an edge
 temp=-1./conv2(test,secondorder_y,'same').*conv2(test,[-1,-1;1,1],'same');
%detecting extremas and Orientation 
 weight=fspecial('gaussian',width,1.5*scale); %weight matrix
%calculate region pixels' magnitude and region orientation
%% keypoint descriptor
descriptor=normr(descriptor); % create orientation histogram
