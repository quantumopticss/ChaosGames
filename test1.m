function test1(N,a)
Num=50000;
hold on;
Ax=zeros(1,N);
Ay=zeros(1,N);
x=1;
y=0;
for s=1:N
    Ax(1,s) = cos(2*pi*s/N);
    Ay(1,s) = sin(2*pi*s/N);
end

for k=1:Num
    p = randi([1,N+2]);
    if (p==N+2)
        x = x*(1-a) + a*Ax(1,N);
        y = y*(1-a) + a*Ay(1,N);
    else
        if(p==(N+1))
            x = x*(1-a) + a*Ax(1,N-1);
            y = y*(1-a) + a*Ay(1,N-1);
        else
            x = x*(1-a) + a*Ax(1,p);
            y = y*(1-a) + a*Ay(1,p);
        end
    end
    Bx(1,k) = x;
    By(1,k) = y;
end
scatter(Bx,By,0.1,".","blue");