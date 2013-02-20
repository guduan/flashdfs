clc
% a =[1     2
%      3     4
%      5     6
%      7     8];
%  [U,S,V] = svd(R1);
%  S(2,2)=0;
% R2=U*S*V';
%  [x, stdx, mse, S] = util_lssvd(A, b, w, c)
%  b1=[];
%  for i=1:25
%      b1(:,i)=a(15*(i-1)+1:15*i,3);
%  end
%  b1=b1';
 
%   b2=[];
%  for i=1:25
%      b2(:,i)=a(15*(i-1)+1:15*i,3);
%  end
%  b2=b2';
 
%   b3=[];
%  for i=1:25
%      b3(:,i)=a(15*(i-1)+1:15*i,3);
%  end
%  b3=b3';
%  
%   vogt.LRmat1=a;
%    vogt.LRmat2=a;
%      vogt.LRmat3=a;
%  vogt.QRmat1=b1;
%  vogt.QRmat2=b2;
%  vogt.QRmat3=b3;
%  vogt.QR=[b1;b2;b3];
%   vogt.LR=[vogt.LRmat1;vogt.LRmat2;vogt.LRmat3];
%   BR1=-eye(25);
%   vogt.BR=[BR1;BR1;BR1];
%   vogt.RQB=[vogt.QR, vogt.BR];
%   vogt.RQBL=[vogt.QR, vogt.BR,vogt.LR];
%   
% QR1=[vogt.QRmat1;vogt.QRmat2;vogt.QRmat3];
% BR1=[vogt.BRmat1;vogt.BRmat2;vogt.BRmat3];
% LR1=[vogt.LRmat1;vogt.LRmat2;vogt.LRmat3];
% r1=[QR1,BR1];
% % 
QR2=[QRmat.QRmat1;QRmat.QRmat2;QRmat.QRmat3];
BRmat=-eye(status.nBpm_new);
BR2=[BRmat;BRmat;BRmat];
LR2=[LRmat.LRmat1;LRmat.LRmat2;LRmat.LRmat3];
RALL2=[QR2,BR2];

% r3=r1(1:23,1:13);
% r4=r2(1:23,1:13);