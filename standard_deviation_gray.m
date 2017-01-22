function s=standard_deviation_gray(i)

[m n]=size(i);
v=sum(i);
v=sum(v);
i=uint32(i);
i=power(i,2);
V=sum(i);
V=sum(V);
n=n*m;
s=sqrt(V/n-((v/n)*(v/n)));