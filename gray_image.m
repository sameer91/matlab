I = imread('test_image.jpg');
G = rgb2gray(I);
Red = I(:,:,1);
Green = I(:,:,2);
Blue = I(:,:,3);
figure;
imshow(G);
figure;
imshow(I)
figure;
imshow(Blue)
figure;
imshow(Green)
