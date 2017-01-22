function r=rparts(img1,img2)
p1=parts(img1);
p2=parts(img2);
cnt=1;
for i=1:4
    for j=1:4
    r(i,j)=add_gray(p1(:,:,cnt),p2(:,:,cnt));
    cnt=cnt+1;
    end
end