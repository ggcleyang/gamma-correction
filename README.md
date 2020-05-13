## gamma correction
 gamma correction for color or gray image
 
*** 
├─matlab_script  
├─images---tested images-color and gray images 
***

## **some more details:**

***
%color image  
1.first need to rgb2hsv  
2.process channel V only using gamma correction  
3.hsv2rgb  
  
%gray image  
directly to gamma correction  

care about image data normalization(unint8 to double) in processing or display  

%color_space_gamma_curve.m  
for plot gamma curves of various color space  
% red curve for sRGB/Display-P3  
% green curve for Adobe RGB (1998)  
% blue curve for BT.709/Rec2020/BT.2020  
% magenta curve for DCI-P3  
% yellow curve for Wide Gamut RGB  
% black curve for ProPhoto RGB  

***
