clear;
I=imread('..\images\4.bmp');
%gray=rgb2gray(I);

sizeI=size(I);
if numel(sizeI)>2 %color image
    disp('color image gamma correction');
    %I=double(I);
    I_hsv=rgb2hsv(I);
    h=I_hsv(:,:,1);
    s=I_hsv(:,:,2);
    v=I_hsv(:,:,3);
    v=255*v;
    I_hsv(:,:,3)=gamma_correction(v,1/2.2);
    v1=I_hsv(:,:,3);
    gamma_corrected=hsv2rgb(I_hsv);
    %subplot(1,2,1);imshow(uint8(I)),title('original');
    %subplot(1,2,2);imshow(uint8(gamma_corrected)),title('gamma_corrected');
    figure, montage({uint8(I), uint8(gamma_corrected)},'Size',[1 2]);
else %gray image
    disp('gray image gamma correction');
    gamma_corrected22=gamma_correction(I,1/2.2);
    %subplot(1,2,1);imshow(I),title('original');
    %subplot(1,2,2);imshow(uint8(gamma_corrected)),title('gamma_corrected');
    figure, montage({I, uint8(gamma_corrected22)},'Size',[1 2]);
end

