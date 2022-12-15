uses crt;
function f(x:real):real;
begin
f:=power(x,3)+(-2)*x*power(x,2)+5*x+6;
end;
//первообразная
function f1(x:real):real;
begin
f1:=2*x*power(x,4)/4+(-2)*x*power(x,3/3)+(5)*x*power(x,2/2)+6*x;
end;
var a,b,h,s,y:real;
    n,i:integer;
begin
repeat
writeln('Введите левую границу интервала от -5 до 0 a=');
readln(a);
until (a>=-5)and(a<=0);
repeat
writeln('Введите правую границу интервала от 0 до 5 b=');
readln(b);
until (b>=0)and(b>a)and(b<=5);
repeat
write('Введите число разбиений до 1000 n=');
readln(n);
until (n>=0)and(n<=1000);
h:=(b-a)/n;
s:=(f(a)+f(b))/2;
for i:=1 to n-1 do
s:=s+f(a+i*h);
s:=s*h;
writeln('S=',s:0:5);
//по формуле  Ньютона-Лейбница
y:=f1(b)-f1(a);
writeln('Относительная погрешность=',abs(y-s)/y)
end.