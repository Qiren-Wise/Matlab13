figure;
x = -20:10:20;
y = 0:100;
%随便生成的5组数据，也就是目标上的5条曲线数据
z = zeros(5,101);
z(1,1:10:end) = linspace(1,10,11); % z方向 1-10生成11个数
z(2,1:10:end) = linspace(1,20,11);
z(3,1:10:end) = linspace(1,5,11);
z(4,1:10:end) = linspace(1,10,11);
z(5,1:10:end) = linspace(1,5,11);
for i = 1:5
    %x方向每条曲线都是一个值，重复y的长度 多次
    xx = x(i)*ones(1,101);
    
    %z方向的值，每次取一条
    zz = z(i,:);
    
    %plot3在xyz空间检测曲线，保证xyz长度一致即可
    plot3(xx,y,zz,'LineWidth',2);
    hold on
end
hold off
legend('line1','line2','line3','line4','line5');