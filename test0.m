function test0()
N=3;
a=1/2;
Num=100000;
hold on;
Ax=zeros(1,N);
Ay=zeros(1,N);

x2=0;
y2=0;
for s=1:N
    Ax(1,s) = cos(2*pi*s/N);
    Ay(1,s) = sin(2*pi*s/N);
end

for k=1:Num
    p = randi([1,N]);
    x2 = x2*(1-a) + a*Ax(1,p);
    y2 = y2*(1-a) + a*Ay(1,p);
    Bx(1,k) = x2;
    By(1,k) = y2;
end

x2=1;
y2=1;
for s=1:N
    Ax(1,s) = cos(2*pi*s/N);
    Ay(1,s) = sin(2*pi*s/N);
end

for k=1:Num
    p = randi([1,N]);
    x2 = x2*(1-a) + a*Ax(1,p);
    y2 = y2*(1-a) + a*Ay(1,p);
    Cx(1,k) = x2;
    Cy(1,k) = y2;
end




hold on;
scatter(Bx,By,0.1,".","blue");
scatter(Cx,Cy,0.1,".","green");
