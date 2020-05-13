% disppaly different color space gamma curve
% red curve for sRGB/Display-P3
% green curve for Adobe RGB (1998)
% blue curve for BT.709/Rec2020/BT.2020
% magenta curve for DCI-P3
% yellow curve for Wide Gamut RGB
% black curve for ProPhoto RGB

x=linspace(0,1,10000);
%gamma sRGB %Display-P3
if x<0.0031308
    gamma_sRGB=12.92*x;
else
    gamma_sRGB=1.055*x.^(1/2.4)-0.055;
end

%gamma  Adobe RGB (1998)
gamma_adobe_RGB=x.^(1/2.19921875);

%ITU 709 gamma %Rec2020/BT.2020
if x<0.018
    gamma_709=4.5*x;
else
    gamma_709=1.099*x.^(0.45)-0.009;
end

%DCI-P3
gamma_DCI_P3=x.^(1/2.6);

%Wide Gamut RGB
gamma_Wide_Gamut_RGB=x.^(1/2.2);

%ProPhoto RGB
gamma_ProPhoto_RGB=x.^(1/1.8);

figure,
plot(x,gamma_sRGB,'r',x,gamma_adobe_RGB,'g',x,gamma_709,'b',x,gamma_DCI_P3,'m',x,gamma_Wide_Gamut_RGB,'y',x,gamma_ProPhoto_RGB,'k');
xlabel('input x');
ylabel('output gamma correction');
