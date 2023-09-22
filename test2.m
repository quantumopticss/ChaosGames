function test2(a)
Num=20000;
N=3;
hold on;
Ax=zeros(1,N);
Ay=zeros(1,N);
x1=0;
y1=0;
x2=0;
y2=0;


for s=1:N
    Ax(1,s) = cos(2*pi*s/N);
    Ay(1,s) = sin(2*pi*s/N);
end

for k=1:Num
    p = randi([1,N]);
    x1 = x2*(1-a) + a*Ax(1,p);
    y1 = y2*(1-a) + a*Ay(1,p);
    
    x2 = x1*(1-a) + a*Ax(1,p);
    y2 = y1*(1-a) + a*Ay(1,p);


    Bx1(1,k) = x1;
    By1(1,k) = y1;

    Bx2(1,k) = x2;
    By2(1,k) = y2;
end

scatter(Bx1,By1,0.01,".","blue");
%scatter(Bx2,By2,0.5,".","blue");
