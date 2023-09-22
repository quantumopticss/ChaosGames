function fractal_12()
a=4/5;
Num=20000;
hold on;
N=13;
x=0;
y=0;
Ax=[0,1.2,3.8,5,5,5,5,3.8,1.2,0,0,0,2.5];
Ay=[0,0,0,0,1.2,3.8,5,5,5,5,3.8,1.2,2.5];

for k=1:Num
    p = randi([1,N]);
    x = x*(1-a) + a*Ax(1,p);
    y = y*(1-a) + a*Ay(1,p);
    Bx(1,k) = x;
    By(1,k) = y;
end
scatter(Bx,By,0.4,'blue');