function fractal_0()
N=3;  %%%%%
if (1 == mod(N,2))%%%%%
    a = 1/(1+2*sin(pi/(2*N)));
else
    a = 1/(1+sin(pi/N));
end 
Num=100000;
NN = N+1;
hold on;
Ax=zeros(1,N);
Ay=zeros(1,N);
x=0;
y=0; %(x,y)
for s=1:N
    Ax(1,s) = cos(2*pi*s/N);
    Ay(1,s) = sin(2*pi*s/N);
end
Ax(1,NN)=0;
Ay(1,NN)=0;


for k=1:Num
    p = randi([1,NN]);
    x = x*(1-a) + a*Ax(1,p);
    y = y*(1-a) + a*Ay(1,p);
    Bx(1,k) = x;
    By(1,k) = y;
end
scatter(Bx,By,0.5,".","blue");
