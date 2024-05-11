function v=biseccion (f,a,b,tol,n) 
f=inline(f);
v =[]
c=(a+b)/2; 
i=0;
v= [v; i  a   b   c   f(c)]; 
while ( i<n & abs (a/2-b/2) >tol)
if f(a)*f(c)<0 
i=i+1;
b=c; 
else
if f(b)*f(c)<0
i=i+1; 
a=c;
else 
i=n; 
end
end
if i<n
c=(a+b)/2;
v=[v; i  a  b  c  f(c)]; 
end
end
 
fprintf('El método tuvo éxito después de %3.0f iteraciones',i)
fprintf ('\n') 
fprintf('Resultados obtenidos')
fprintf('\n') 
fprintf('i  a_i   b_i   C_i   f(c_i)/n')
end
