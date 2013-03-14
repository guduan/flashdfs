clc
% % % *****************************************************
fullR=R1;
RQ=fullR(1:54,1:8);
RB=fullR(1:54,9:26);
RL=fullR(1:54,27:28);
RlinQ=fullR(55:56,1:8);
RminQ=fullR(57:64,1:8);
RlinB=fullR(65:66,9:26);
RminB=fullR(67:end,9:26);








% % % *****************************************************
% % % *****************************************************
% % % % fit the calculated offsets
% figure;
% plot(status.zQuad_new,result1.qoffset_calculated,'r*');hold on;
% plot(status.zBpm_new,result1.bpmoffset_calculated,'b*');hold on;
% 
% linefit_qoffset=polyfit(status.zQuad_new,result1.qoffset_calculated',1);
% linefit_bpmoffset=polyfit(status.zBpm_new,result1.bpmoffset_calculated',1);
% 
% y1=polyval(linefit_qoffset,status.zQuad_new);
% y2=polyval(linefit_bpmoffset,status.zBpm_new);
% plot(status.zQuad_new,y1,status.zBpm_new,y2);
% xlabel('position z (m)');ylabel('Offsets (um)');
% titlestr={['Quad and BPM offsets Fit'];
%     ['Quad offset fit:     x= ',num2str(y1(2)*1e6),' um ','   xp= ',num2str(y1(1)*1e6),' urad'];
%     [' Bpm offset fit:     x= ',num2str(y2(2)*1e6),' um ','   xp= ',num2str(y2(1)*1e6),' urad']};
% title(titlestr);

% % *****************************************************
% % % fit measured orbit
% % see the orbits before 1st correction.
% figure;
% plot(status.zBpm_new,measured_orbit1.orbit1,'r*');hold on;
% plot(status.zBpm_new,measured_orbit1.orbit2,'b*');hold on;
% plot(status.zBpm_new,measured_orbit1.orbit3,'g*');
% legend('orbit at 600MeV','orbit at 720MeV','orbit at 900MeV',0);hold off;
% title('orbits before 1st correction');
% polyfit(status.zBpm_new(1:3),measured_orbit1.orbit1(1:3)',1)
% 
% 
% % see the orbits after 1st correction.
% figure;
% plot(status.zBpm_new,measured_orbit2.orbit1,'r*');hold on;
% plot(status.zBpm_new,measured_orbit2.orbit2,'b*');hold on;
% plot(status.zBpm_new,measured_orbit2.orbit3,'g*');
% legend('orbit at 600MeV','orbit at 720MeV','orbit at 900MeV',0);hold off;
% title('orbits after 1st correction');
% polyfit(status.zBpm_new(1:3),measured_orbit2.orbit1(1:3)',1)
% 
% % see the orbits after 2nd correction.
% figure;
% plot(status.zBpm_new,measured_orbit3.orbit1,'r*');hold on;
% plot(status.zBpm_new,measured_orbit3.orbit2,'b*');hold on;
% plot(status.zBpm_new,measured_orbit3.orbit3,'g*');
% legend('orbit at 600MeV','orbit at 720MeV','orbit at 900MeV',0);hold off;
% title('orbits before 2nd correction');
% polyfit(status.zBpm_new(1:3),measured_orbit3.orbit1(1:3)',1)
% % *****************************************************







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
% QR2=[QRmat.QRmat1;QRmat.QRmat2;QRmat.QRmat3];
% BRmat=-eye(status.nBpm_new);
% BR2=[BRmat;BRmat;BRmat];
% LR2=[LRmat.LRmat1;LRmat.LRmat2;LRmat.LRmat3];
% RALL2=[QR2,BR2];
% RALL2([1 25 49],:)=[];
% RALL2(:,[8 10 12 14 16 18 20 21 22])=[];
% 
% diff=RALL2-vogt.RQB_modify;
% surf(diff);
%diff(find(diff<1e-4))=0;


% r3=r1(1:23,1:13);
% r4=r2(1:23,1:13);