function r = blur(img,w)

%%BLUR
% Write a function called BLUR that blurs the input image. The function is 
% to be called like this:
% output = blur(img,w);
% where img, the input image is a two-dimensional matrix of grayscale pixel 
% values between 0 and 255. Blurring is to be carried out by averaging the 
% pixel values in the vicinity of every pixel. Specifically, the output 
% pixel value is the mean of the pixels in a square submatrix of size 2w+1 
% where the given pixel sits in the center. For example, if w is 1, then we 
% use a 3x3 matrix, that is, we average all the neighboring pixels of the 
% given pixel and itself. Only use valid pixels when portions of the 
% blurring matrix fall outside the image. For example, the blurred value 
% corresponding to w = 1 at index (1,1) would be the mean of of elements 
% (1,1), (1, 2), (2,1) and (2, 2). Both input img and output output are of 
% type uint8.

I = imread(img); % Base mtx given by the input image file - used in loops
II = zeros(size(I,1),size(I,2)); % Mean matrix preallocation

for ii = 1:size(I,1) % Visiting all rows...
    for jj = 1:size(I,2) % ... and collumns of matrix I
        s = []; % Initializing the variable 
        % Setting loop index for the sub-matrix - row
        z = (ii-w):(ii+w); z = z(z > 0); z = z(z<=size(I,1));
        for ii_sub = z % Visiting rows...
            % Setting loop index for the sub-matrix - collum
            k = (jj-w):(jj+w); k = k(k > 0); k = k(k<=size(I,2));
            for jj_sub = k % ... and collumns of the sub-matrix
                s = [s I(ii_sub,jj_sub)];
            end
        end
        II(ii,jj) = mean(s); % Replacing values of mean matrix
    end
end

r = uint8(II); % Final matrix

imshow(r); % Display Image Bluered 




