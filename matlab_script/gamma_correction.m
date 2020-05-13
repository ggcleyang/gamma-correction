function output = gamma_correction(input,value)

if nargin < 2 | (nargin ==2 & value < 0)
    value = 1;
    disp('use default gamma = 1');
end
[rows,cols]=size(input);
output=zeros(rows,cols);
for i=1:rows
    for j=1:cols
        m=double(input(i,j));
        %output(i,j)=255.*(m/255).^value;
        output(i,j)=256.*((m+0.5)/256).^value-0.5;%normalization£»pre compensation£»inverse normalization
    end
end
%subplot(1,2,2); imshow(uint8(output));
%subplot(1,2,2); imshow(output,[]);
%subplot(1,2,2); imshow(output/255);
end