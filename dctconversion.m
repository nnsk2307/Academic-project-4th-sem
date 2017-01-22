function i=dctconversion(img1,img2)
i1=dct(img1);
i2=dct(img2);
j2=idct(i1);
j1=idct(i2);
r=rparts(j1,j2);
i=r;