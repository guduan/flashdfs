clc;
% [U,S,V]=svd(R1);
% a=max(S,[],1);
% plot(max(S,[],1),'rd');

% 
% %1. only launch condition
% r1=[LRmat.LRmat1;LRmat.LRmat2;LRmat.LRmat3];
% init=lscov(r1,x1);
% init(1)=init(1)-init(2)*status.zBpm(1);
% tt1=cell2mat({init,input_offset1.launch_real});
% figure;
% bar(tt1);

% % % 2.only Quad offset
% r1=[QRmat.QRmat1;QRmat.QRmat2;QRmat.QRmat3];
% init=lscov(r1,x1);
% tt1=cell2mat({init,input_offset1.qoffset_real});
% figure;
% bar(tt1);

% % %3.only BPM offset
% BRmat=-eye(status.nBpm_new);
% r1=[BRmat;BRmat;BRmat];
% init=lscov(r1,x1);
% tt1=cell2mat({init,input_offset1.bpmoffset_real});
% figure;
% bar(tt1);

% % %4.only Quad offset+BPM offset+launch
% QR=[QRmat.QRmat1;QRmat.QRmat2;QRmat.QRmat3];
% BRmat=-eye(status.nBpm_new);
% BR=[BRmat;BRmat;BRmat];
% LR=[LRmat.LRmat1;LRmat.LRmat2;LRmat.LRmat3];
% 
% RALL=[QR,BR,LR];
% %result=util_lssvd(R,x,w,0);
% result=lscov(RALL,x1);
% result(end-1)=result(end-1)-result(end)*status.zBpm(1);
% 
% tt1=cell2mat({result(1:status.nQuad_new),input_offset1.qoffset_real});
% figure;subplot(3,1,1);
% bar(tt1);title('QUAD OFFSET');
% tt2=cell2mat({result(status.nQuad_new+1:status.nQuad_new+status.nBpm_new),input_offset1.bpmoffset_real});
% subplot(3,1,2);
% bar(tt2);title('BPM OFFSET');
% tt3=cell2mat({result(end-1:end),input_offset1.launch_real});
% subplot(3,1,3);
% bar(tt3);title('LAUNCH');

% %5.only Quad offset+BPM offset.  WITHOUT launch
QR=[QRmat.QRmat1;QRmat.QRmat2;QRmat.QRmat3];
BRmat=-eye(status.nBpm_new);
BR=[BRmat;BRmat;BRmat];

RALL=[QR,BR];
result=util_lssvd(RALL,x1,w1,1e-6);
% result=lscov(RALL,x1);
% result2=inv(transpose(RALL)*RALL)*transpose(RALL)*x1;
% result=pinv(RALL)*x1;
% result=RALL\x1;
% tt=cell2mat({result,result2});
% bar(tt);

tt1=cell2mat({result(1:status.nQuad_new),input_offset1.qoffset_real});
figure;subplot(2,1,1);
bar(tt1);title('QUAD OFFSET');
tt2=cell2mat({result(status.nQuad_new+1:status.nQuad_new+status.nBpm_new),input_offset1.bpmoffset_real});
subplot(2,1,2);
bar(tt2);title('BPM OFFSET');



% init=lscov(R1,x1);
% tt1=cell2mat({init(1:end-2),input_offset1.qoffset_real});
% figure;
% bar(tt1);

% b=x1(1:17);
% init=lscov([QRmat.QRmat1,-eye(status.nBpm_new)],b);

% LR=[LRmat.LRmat1;LRmat.LRmat2;LRmat.LRmat3];
% init=lscov(LR,xMeas1)





