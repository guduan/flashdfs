clc;
b=[input_offset1.qoffset_real;input_offset1.bpmoffset_real;repmat(input_offset1.launch_real,3,1)];

measured_orbit1=Readbpm(1);
input_offset1=Read_real_offset(1);
[measured_orbit1,input_offset1,status]=modify_meas_input(measured_orbit1,input_offset1,status);
[x1,xMeas1,xconstrain1]=DFS_BpmDataGet(status,measured_orbit1,input_offset1);

b1=lscov(R1,x1);

plot(b-b1);





% [U,S,V]=svd(R1);
% a=max(S,[],1);
% plot(max(S,[],1),'rd');

% ***************************************
%1. only launch condition
% r1=[LRmat.LRmat1;LRmat.LRmat2;LRmat.LRmat3];
% init=lscov(r1,x1);
% init(1)=init(1)-init(2)*status.zBpm(1);
% tt1=cell2mat({init,input_offset1.launch_real});
% figure;
% bar(tt1);

% ***************************************
% % 2.only Quad offset
% r1=[QRmat.QRmat1;QRmat.QRmat2;QRmat.QRmat3];
% init=lscov(r1,x1);
% tt1=cell2mat({init,input_offset1.qoffset_real});
% figure;
% bar(tt1);

% ***************************************
% % %3.only BPM offset
% BRmat=-eye(status.nBpm_new);
% r1=[BRmat;BRmat;BRmat];
% init=lscov(r1,x1);
% tt1=cell2mat({init,input_offset1.bpmoffset_real});
% figure;
% bar(tt1);

%***************************************
% %4.only Quad offset+BPM offset.  WITHOUT launch
% QR=[QRmat.QRmat1;QRmat.QRmat2;QRmat.QRmat3];
% BRmat=-eye(status.nBpm_new);
% BR=[BRmat;BRmat;BRmat];
% RALL=[QR,BR];
% % result=util_lssvd(RALL,x1,w1,0);
% result=lscov(RALL,x1);
% tt1=cell2mat({result(1:status.nQuad_new),input_offset1.qoffset_real});
% figure;subplot(2,1,1);
% bar(tt1);title('QUAD OFFSET');
% tt2=cell2mat({result(status.nQuad_new+1:status.nQuad_new+status.nBpm_new),input_offset1.bpmoffset_real});
% subplot(2,1,2);
% bar(tt2);title('BPM OFFSET');

%***************************************

% %***************************************
% %5.Quad offset+BPM offset+launch
% QR=[QRmat.QRmat1;QRmat.QRmat2;QRmat.QRmat3];
% BRmat=-eye(status.nBpm_new);
% BR=[BRmat;BRmat;BRmat];
% LR=[LRmat.LRmat1;LRmat.LRmat2;LRmat.LRmat3];
% 
% RALL=[QR,BR,LR];
% result=util_lssvd(RALL,x1,w1,0);
% % result=lscov(RALL,x1);
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

% %***************************************
% %6.Quad offset+launch  %without BPM offset
% QR=[QRmat.QRmat1;QRmat.QRmat2;QRmat.QRmat3];
% BRmat=-eye(status.nBpm_new);
% BR=[BRmat;BRmat;BRmat];
% LR=[LRmat.LRmat1;LRmat.LRmat2;LRmat.LRmat3];
% RALL=[QR,LR];
% result=lscov(RALL,x1);
% % result=util_lssvd(RALL,x1,w1,0);
% tt3=cell2mat({result(end-1:end),input_offset1.launch_real});
% figure;subplot(2,1,1);
% bar(tt3);title('LAUNCH');
% tt1=cell2mat({result(1:status.nQuad_new),input_offset1.qoffset_real});
% subplot(2,1,2);
% bar(tt1);title('QUAD OFFSET');








% myorbit.orbit1=orbit.orbit1(5:24);
% myorbit.orbit2=orbit.orbit2(5:24);
% myorbit.orbit3=orbit.orbit3(5:24);
% 
% myorbit.orbit1=orbit.orbit1(7:24);
% myorbit.orbit2=orbit.orbit2(7:24);
% myorbit.orbit3=orbit.orbit3(7:24);