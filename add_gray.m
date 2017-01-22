function ccr=add_gray(i1,i2)

c=covar_gray(i1,i2);
s1=standard_deviation_gray(i1);
s2=standard_deviation_gray(i2);

ccr=c/(s1*s2);

