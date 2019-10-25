x0=0
f=3/(x+1);
i=1;
fx(i)=x0;

syms x;
f1=subs(f,x,fx(i));
z=diff(f);
d=subs(z,x,fx(i));

ea(1)=100;

while abs(ea(i))>=.001;
    fx(i+1)=fx(i)-f1/d; f1=subs(f,x,fx(i+1)); d=subs(z,x,fx(i+1));
    ea(i+1)=abs((fx(i+1)-fx(i))/fx(i+1)*100);
    i=i+1;
end






