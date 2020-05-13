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

care about image data unint8 or double in processing or display  

***
