function [a,b,c]=covar(i1,i2)
v1=i1(:,:,1);
v2=i1(:,:,2);
v3=i1(:,:,3);


v11=i2(:,:,1);
v22=i2(:,:,2);
v33=i2(:,:,3);


vv1=sum(v1);
vv1=sum(vv1);
vv2=sum(v2);
vv2=sum(vv2);
vv3=sum(v3);
vv3=sum(vv3);
[m,o]=size(v1);
n=m*o;
vv1=vv1/n;
vv2=vv2/n;
vv3=vv3/n;


vv11=sum(v11);
vv11=sum(vv11);
vv22=sum(v22);
vv22=sum(vv22);
vv33=sum(v33);
vv33=sum(vv33);

vv11=vv11/n;
vv22=vv22/n;
vv33=vv33/n;

v1=uint32(v1);
v3=uint32(v3);
v2=uint32(v2);
v11=uint32(v11);
v33=uint32(v33);
v22=uint32(v22);
for j=1:m
    for k=1:o
        
        v1(j,k)=v1(j,k)*v11(j,k);
        v2(j,k)=v2(j,k)*v22(j,k);
        v3(j,k)=v3(j,k)*v33(j,k);
    end
end
v1=sum(v1);
v1=sum(v1);
v2=sum(v2);
v2=sum(v2);
v3=sum(v3);
v3=sum(v3);

v1=v1/n;
v2=v2/n;
v3=v3/n;

ca=(v1-vv1*vv11);
cb=(v2-vv2*vv22);
cc=(v3-vv3*vv33);

a=ca;
b=cb;
c=cc;

