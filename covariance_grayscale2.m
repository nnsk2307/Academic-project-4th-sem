function c=covar_gray2(i1,i2)


v1=sum(i1);
v1=sum(v1);
v2=sum(i2);
v2=sum(v2);

[m,o]=size(i1);
n=m*o;
v1=v1/n;
v2=v2/n;




i1=uint32(i1);
i2=uint32(i2);

for j=1:m
    for k=1:o
        
        i1(j,k)=i1(j,k)*i2(j,k);
    end
end
V1=sum(i1);
V1=sum(V1);

V1=V1;

c=V1-v1*v2*n;
