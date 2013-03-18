clc;
b=[input_offset1.qoffset_real;input_offset1.bpmoffset_real;repmat(input_offset1.launch_real,3,1)];
% b=[input_offset1.qoffset_real;input_offset1.bpmoffset_real;zeros(6,1)];
% b=[input_offset1.qoffset_real*0;input_offset1.bpmoffset_real*0;repmat(input_offset1.launch_real,3,1)];

xcal=R1*b;
xc=reshape(xcal,status.nBpm_new,[]);

% b=[input_offset1.qoffset_real;input_offset1.bpmoffset_real];
% xcal=R1*b;
% xc=reshape(xcal,[],3);

measured_orbit1=Readbpm(1);
input_offset1=Read_real_offset(1);
[measured_orbit1,input_offset1,status]=modify_meas_input(measured_orbit1,input_offset1,status);
[x1,xMeas1,xconstrain1]=DFS_BpmDataGet(status,measured_orbit1,input_offset1);
xm=reshape(x1,[],3);

figure;
subplot(3,1,1);
plot(status.zBpm_new,xm(:,1),'-rd',status.zBpm_new,xm(:,2),'-bd',status.zBpm_new,xm(:,3),'-gd');
legend('600MeV','720MeV','900MeV');grid on;
title('measured orbits');

subplot(3,1,2);


plot(status.zBpm_new,xc(:,1),'-rd',status.zBpm_new,xc(:,2),'-bd',status.zBpm_new,xc(:,3),'-gd');
legend('600MeV','720MeV','900MeV');grid on;
title('Predict orbits');

subplot(3,1,3);
plot(status.zBpm_new,xm(:,1)-xc(:,1),'-rd',status.zBpm_new,xm(:,2)-xc(:,2),'-bd',status.zBpm_new,xm(:,3)-xc(:,3),'-gd');
legend('600MeV','720MeV','900MeV');grid on;
title('Differences');
ylim([-1e-3,1e-3]);










