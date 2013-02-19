clc
% a =[1     2
%      3     4
%      5     6
%      7     8];
%  [U,S,V] = svd(R1);
%  S(2,2)=0;
% R2=U*S*V';
%  [x, stdx, mse, S] = util_lssvd(A, b, w, c)
%  a=[];
%  for i=1:24
%      a(:,i)=temp(15*(i-1)+1:15*i);
%  end
%  vogt.LRmat1=[];
%   vogt.LRmat2=[];
%   vogt.LRmat3=[];
QR=[vogt.QRmat1;vogt.QRmat2;vogt.QRmat3];
BR=[vogt.BRmat1;vogt.BRmat2;vogt.BRmat3];
LR=[vogt.LRmat1;vogt.LRmat2;vogt.LRmat3];
r1=[QR,BR];

