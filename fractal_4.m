function fractal_4()
a=2/3;
Num=70000;
N=8;
Ax=zeros(1,N);
Ay=zeros(1,N);
x=0.2;
y=0;
for s=1:4
    Ax(1,s) = cos(2*pi*s/4)/sqrt(2);
    Ay(1,s) = sin(2*pi*s/4)/sqrt(2);
end

for s=5:8
    Ax(1,s) = cos(pi/4+2*pi*s/4);
    Ay(1,s) = sin(pi/4+2*pi*s/4);
end

for k=1:Num
    p = randi([1,N]);
    x = x*(1-a) + a*Ax(1,p);
    y = y*(1-a) + a*Ay(1,p);
    Bx(1,k) = x;
    By(1,k) = y;
end


filename = "Chaos Games.gif";
[~,n] = size(Bx);
n = fix(n/1200);
fig = figure;
title('Motion');
legend('r(t)');
for idx = 1:n
    scatter(Bx(1,1:1200*idx),By(1,1:1200*idx),1,'blue');
    drawnow;
    frame = getframe(fig);
    im{idx} = frame2im(frame);
end
close;

for idx = 1:n
    [A,map] = rgb2ind(im{idx},256);
    if idx == 1
        imwrite(A,map,filename,"gif","LoopCount",Inf,"DelayTime",0.0001);
    else
        imwrite(A,map,filename,"gif","WriteMode","append","DelayTime",0.0001);
    end
end

