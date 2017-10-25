%王李麒

%summary:循环读取文本文件数据，并保存
%result：deform

%bug:文件名不连续会出错

clear;clc;

%ei,ej:控制变量
ei=2;   
ej=2;

col_set=3;  %第3列最大值
col_max=zeros(ei,ej);   %col_max(i,j)表示deform{i,j}其中某列的最大值

for i=1:ei
    for j=1:ej
       fileName=['{' num2str(i*0.1,'%.1f') '}{' num2str(j) '}deformation_1_Bot.txt'];    %文件名拼接
       deform{i,j}=load(fileName);    %使用元胞存储数据
       col_max(i,j)=max(deform{i,j}(:,col_set));
    end
end

%访问元胞中元素示例
%deform{1,1}(1,2)