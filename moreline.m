figure;
x = -20:10:20;
y = 0:100;
%������ɵ�5�����ݣ�Ҳ����Ŀ���ϵ�5����������
z = zeros(5,101);
z(1,1:10:end) = linspace(1,10,11); % z���� 1-10����11����
z(2,1:10:end) = linspace(1,20,11);
z(3,1:10:end) = linspace(1,5,11);
z(4,1:10:end) = linspace(1,10,11);
z(5,1:10:end) = linspace(1,5,11);
for i = 1:5
    %x����ÿ�����߶���һ��ֵ���ظ�y�ĳ��� ���
    xx = x(i)*ones(1,101);
    
    %z�����ֵ��ÿ��ȡһ��
    zz = z(i,:);
    
    %plot3��xyz�ռ������ߣ���֤xyz����һ�¼���
    plot3(xx,y,zz,'LineWidth',2);
    hold on
end
hold off
legend('line1','line2','line3','line4','line5');