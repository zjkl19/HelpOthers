%������

%summary:ѭ����ȡ�ı��ļ����ݣ�������
%result��deform

%bug:�ļ��������������

clear;clc;

%ei,ej:���Ʊ���
ei=2;   
ej=2;

col_set=3;  %��3�����ֵ
col_max=zeros(ei,ej);   %col_max(i,j)��ʾdeform{i,j}����ĳ�е����ֵ

for i=1:ei
    for j=1:ej
       fileName=['{' num2str(i*0.1,'%.1f') '}{' num2str(j) '}deformation_1_Bot.txt'];    %�ļ���ƴ��
       deform{i,j}=load(fileName);    %ʹ��Ԫ���洢����
       col_max(i,j)=max(deform{i,j}(:,col_set));
    end
end

%����Ԫ����Ԫ��ʾ��
%deform{1,1}(1,2)