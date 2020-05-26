<h1> Multiclass classification using support vector machines and transformations </h1>

Some of the experiments and techniques described here are part of my publication: https://www.sciencedirect.com/science/article/pii/S187705091600199X

<h3> Transformations </h3>
<h4> Ridgelet Transform </h4>
It enhances the idea of point-to-point mapping of cusps to point-to-line mapping using projection slice theorem on radon transforms making it not only a better representer of discretised signals but also more effective in handling directions. It however might not perform well when expected edges are curves rather than lines and hence, we use the curvelet transform as described below. 
The algorithm of the finite ridgelet transform is as follows:

1. Calculate discrete radon transform and then apply the wavelet transform. 

2. The above can be accomplished by calculating the fast fourier transforms of the image and applying wavelet function on the radon project.
Details of the wavelet transform are as discussed below.

<h4> Wavelet Transform </h4>
A discrete wavelet transform is one for which wavelets are discretely sampled while capturing frequency and location information. While wavelets also help control signal to noise ratio(SNR),they restrict changes in the shape domain while allowing time extensions in the hilbert space.
For more information: https://www.sciencedirect.com/topics/computer-science/wavelet-transforms

<h4> Gabor wavelet Transform </h4>
Gabor filter functions applied to the wavelet transform extracts gabor features of the input image whose vectors are further normalised to zero mean and unit variance. Filter banks with scales of gabor filters are convolved with the signal in a process that's very closely related to functionality in the primary visual cortex.

<h4> Curvelet Transform </h4>
Curvelets are non-adaptive directional technique used in mutliscale object representation offering optimal sparse representation of objects with edges.
Curvelet is also a generalisation of the fourier transform which helps overcome missing directional selectivelity of wavelets by handling curves and curve discontinuities with small number of coefficients.

<h3> Scale invariant Feature Transform </h3>
SIFT is used with gaussian scale-space extrema detection and key point localisation in order to eliminate points with low contrast or poorly localised edges. 

<h3> Segmentation based Fractal Texture analysis with OTSU algorithm </h3>
The SFTA module is used to extract texture information from images influenced by the input grayscale images and size of feature vector. 
The algorithm decomposes incoming image into binary image set from which fractal dimensions of the resulting regions are computed in order to describe segmented texture patterns. 

The Otsu algorithm performs autothresholding by returning a single intensity threshold separating pixels into foreground and background classes while minimising intraclass intensity variance and maximising interclass variance or equivalently performing global optimal k means on intensity histogram.
For mathematics of the same: refer https://en.wikipedia.org/wiki/Otsu%27s_method

<h3> Support Vector Machines for multiclasses </h3>
The aforementioned objective can be accomplished with a one-against-one approach while monotonically transforming results or by implementing a one-against-all approach.

<h3> fSIFT </h3>
Applying fast SIFT helps in converting image to frequency domain while the hough transform helps isolate features on shape basis within images by identifying inclass instances through a voting procedure.



