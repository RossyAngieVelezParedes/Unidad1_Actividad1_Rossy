function v=newton(f,x0,tol,n)
g=inline(f);
v=[ ];
i=1;
df=diff(f);
dg=inline(df);
x1= x0 - g(x0)/dg(x0);
v=[v; i  x1  g(x1)];
while (i < n  &  abs(x1-x0)>tol)
    x0=x1;
    i=i+1;
    x1= x0 - g(x0)/dg(x0);
    v=[v; i  x1  g(x1)];
end
if (i==n);
    fprintf ('El metodo fracaso despues de &3.of iteraciones',i)
else
    fprintf('El metodo tuvo exito despues de &3.of iteraciones',i)
    fprintf('\n')
    fprintf('Los resultados obtenidos')
    fprintf('\n')
    fprintf('i  x_i  f(x_i)\n')
end