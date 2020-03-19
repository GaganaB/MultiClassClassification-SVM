%Applying fast scale invariant fourier transform by converting to frequency domain
[H,T,R] = hough(BW,'RhoResolution',0.5,'ThetaResolution',0.5); %applying the hough transform
x=sift(); 
