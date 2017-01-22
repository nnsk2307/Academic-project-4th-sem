function s=standard_deviation_gray2(i)

[m n]=size(i);
j=i;
v=sum(i);
v=sum(v);
m1=m;
n1=n;
n=n*m;
v=v/n;
v1=v;
s=0;
s=uint32(s);
a=[];
for i1=1:m1
    for i2=1:n1
        a(i1,i2)=i(i1,i2);
        a(i1,i2)=(a(i1,i2)-v);
    end
end
%a=double(a);
a=power(a,7);
s=0;
for i1=1:m1
    for i2=1:n1
        s=s+a(i1,i2);
    end
end

s=nthroot(s,7);


