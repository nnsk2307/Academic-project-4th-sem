function ccr=add_gray2(i1,i2)

c=covar_gray2(i1,i2);
s1=standard_deviation_gray2(i1);
s2=standard_deviation_gray2(i2);

ccr=c/(s1*s2);

