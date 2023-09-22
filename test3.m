function test3(a)
Num=10000;
N=3;
Ax=zeros(1,N);
Ay=zeros(1,N);
x1=0;
y1=0;

for s=1:N
    Ax(1,s) = cos(2*pi*s/N);
    Ay(1,s) = sin(2*pi*s/N);
end

for t3=1:20    
    for k=Num*(t3-1)+1:Num*t3  %(k=1:Num) 实现取某一段的结果。
        p = randi([1,N]);
        x1 = x1*(1-a) + a*Ax(1,p);
        y1 = y1*(1-a) + a*Ay(1,p);
        Bx1(1,k) = x1;
        By1(1,k) = y1;
    end
end

hold on
scatter(Bx1,By1,0.01,".","blue");
