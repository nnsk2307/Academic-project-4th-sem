function p=parts2(img)
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

      