function  [x,k]=jacobim(a,b,x,e,m)
n=length(x);
for k=1:m
t=x;
for i=1:n
s=a(i,1:i-1)*t(1:i-1)+a(i,i+1:n)*t(i+1:n);
x(i)=(b(i)-s)/a(i,i);
end
if norm((x-t),inf)<e
return
end
end
x=[];
k=m
