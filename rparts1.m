%co-relation co-efficient for 2 images
%This function divides image into 16 parts And calculates r for each part
%Saves r for each part into a vector

%function returns r for parts

function r=rparts1(img1,img2)
p1=parts(img1);
p2=parts(img2);
cnt=1;
for i=1:4
    for j=1:4
    r(i,j)=add_gray(p1(:,:,cnt),p2(:,:,cnt));
    cnt=cnt+1;
    end
end

end

%function for calculating r

function ccr=add_gray(i1,i2)

c=covar_gray(i1,i2);
s1=standard_deviation_gray(i1);
s2=standard_deviation_gray(i2);
ccr=c/(s1*s2);

end

%function for covariance

function [m1 m2]=covar_gray(i1,i2)

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
V1=V1/n;
c=V1-v1*v2;
m1=v1;
m2=v2;

end

%function for standard deviation

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

end

%function for dividng image into 16 parts

function p=parts(img)
[M N]=size(img);
m=ceil(M/4);
n=ceil(N/4);
cnt=1;
i=1;
while(i<=M)
    j=1;
    while(j<=N)
       a=1;
    for k=i:i+m-1
        b=1;
        for l=j:j+n-1
            p(a,b,cnt)=img(k,l);
            b=b+1;
        end
        a=a+1;
    end
    cnt=cnt+1;
  j=j+n;
    end
i=i+m;
end;

end

