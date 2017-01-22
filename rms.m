function r=rms(s)
[m,n]=size(s);
o=m*n;
s=power(s,2);
s=sum(s);
s=sum(s);
s=s/o;
r=sqrt(s);