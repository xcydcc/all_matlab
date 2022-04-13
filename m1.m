n=-5:50;

x=zeros(1,length(n));  %输入x(n)   一维数组

h=zeros(1,length(n));  %冲激响应h(n)  一维数组

x([find((n>=0)&(n<=9))])=1;

for i=0:50
    
   h(i+6)=exp(-i/15);

end
                    %定义冲激响应h（n）

subplot(3,1,1);        %三行一列的图像

stem(n,x);             %产生含有空心原点的图像

axis([-5,50,0,1.2]);   %显示横坐标取值的范围忽然纵坐标取值范围

title('输入序列');

xlabel('n');

ylabel('x(n)');

subplot(3,1,2);

stem(n,h);

axis([-5,50,0,1.2]);

title('冲激响应序列');

xlabel('n');

ylabel('h(n)');

%输出响应

y=conv(x,h);           %卷积函数

subplot(3,1,3);

n=0:length(y)-1;

stem(n,y);

axis([-5,50,0,9]);

title('输出响应');

xlabel('n');

ylabel('y(n)');
