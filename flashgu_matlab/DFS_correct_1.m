% run 1st DFS
status.opts=struct( ...
    'usenoise',0,...
    'useLinQuad',0,...
    'useMinQuad',0,...
    'useLinBpm',0,...
    'useMinBpm',0,...
    'useLaunchfit',1);
status.feedback_gain_factor=1;
status.bpm_noise_level=0;
status.svdthreshold=0;
status.fitScale=1;
% ***************************************
measured_orbit1=Readbpm(1);
input_offset1=Read_real_offset(1);

[measured_orbit1,input_offset1,status]=modify_meas_input(measured_orbit1,input_offset1,status);
[x1,xMeas1,xconstrain1]=DFS_BpmDataGet(status,measured_orbit1,input_offset1);
[R1,Rmag1,Rconstrain1]=DFS_ResMatGet(status,QRmat,LRmat);
plot_orbit(status,measured_orbit1,0);

weight_factor=1e3;
w1=DFS_set_weight_factor(status,weight_factor);
result1=runDFS(status,R1,x1,w1);
result1=DFS_launch_fit(status,result1);
plot_offset1(result1,input_offset1,1,status);
offset_feedback(result1,input_offset1,1,status);

% **************************************************
if 1
measured_orbit2=Readbpm(2);
input_offset2=Read_real_offset(2);
[measured_orbit2,input_offset2,status]=modify_meas_input(measured_orbit2,input_offset2,status);
plot_orbit(status,measured_orbit2,1);

figure;
subplot(2,1,1);
plot(status.zBpm_new,measured_orbit1.orbit3,'-r*',status.zBpm_new,measured_orbit2.orbit3,'-b*');grid on;
legend('BPM readings before 1st correction','BPM readings after 1st correction',0);
legend('boxoff');
title('BPM readings at 900MeV');
subplot(2,1,2);
plot(status.zBpm_new,measured_orbit2.orbit3,'-b*',status.zBpm_new,input_offset2.bpmoffset_real,'+r',status.zQuad_new,input_offset2.qoffset_real,'pm');
grid on;
end
% **************************************************


% 
% clear rms_error_bpm rms_error_quad rms_error
% for i=1:20
%     weight_factor=1e-10*10^i;
%     w1=DFS_set_weight_factor(status,weight_factor);
%     result1=runDFS(status,R1,x1,w1);
%     a=[result1.qoffset_calculated-input_offset1.qoffset_real]';
%     b=[result1.bpmoffset_calculated-input_offset1.bpmoffset_real]';
%     rms_error_quad(i)=sqrt(mean(a.^2));
%     rms_error_bpm(i)=sqrt(mean(b.^2));
% end
% figure;
% subplot(3,1,1);plot(rms_error_quad(1,1:20),'DisplayName','rms_error_quad(1,1:20)','YDataSource','rms_error_quad(1,1:20)');figure(gcf)
% subplot(3,1,2);plot(rms_error_bpm(1,1:20),'DisplayName','rms_error_bpm(1,1:20)','YDataSource','rms_error_bpm(1,1:20)');figure(gcf)
% rms_error=rms_error_quad+0.1*rms_error_bpm;
% subplot(3,1,3);plot(rms_error(1,1:20),'DisplayName','rms_error(1,1:20)','YDataSource','rms_error(1,1:20)');figure(gcf)