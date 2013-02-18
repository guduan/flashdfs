clc;
% [U,S,V]=svd(R1);
% a=max(S,[],1);
% plot(max(S,[],1),'rd');

% r1=[LRmat.LRmat1;LRmat.LRmat2;LRmat.LRmat3];
% init=lscov(r1,x1);

% r1=[QRmat.QRmat1;QRmat.QRmat2;QRmat.QRmat3];
% init=lscov(r1,x1);
% tt1=cell2mat({init,input_offset1.qoffset_real});
% figure;
% bar(tt1);
% 
% init=lscov(R1,x1);
% tt1=cell2mat({init(1:end-2),input_offset1.qoffset_real});
% figure;
% bar(tt1);

% b=xMeas1(1:17);
% init=lscov(LRmat.LRmat1,b)
LR=[LRmat.LRmat1;LRmat.LRmat2;LRmat.LRmat3];
init=lscov(LR,xMeas1)





