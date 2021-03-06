% run 3rd DFS
status.opts=struct( ...
    'usenoise',1,...
    'useLinQuad',0,...
    'useMinQuad',0,...
    'useLinBpm',0,...
    'useMinBpm',0,...
    'useLaunchfit',1);
status.feedback_gain_factor=1;
status.bpm_noise_level=0;
status.svdthreshold=1e-5;
status.fitScale=1;
% ***************************************
measured_orbit3=Readbpm(3);
input_offset3=Read_real_offset(3);

[measured_orbit3,input_offset3,status]=modify_meas_input(measured_orbit3,input_offset3,status);
[x3,xMeas3,xconstrain3]=DFS_BpmDataGet(status,measured_orbit3,input_offset3);
[R3,Rmag3,Rconstrain3]=DFS_ResMatGet(status,QRmat,LRmat);
plot_orbit(status,measured_orbit3,2);

weight_factor=1e5;
w3=DFS_set_weight_factor(status,weight_factor);
result3=runDFS(status,R3,x3,w3);
result3=DFS_launch_fit(status,result3);
plot_offset1(result3,input_offset3,3,status);
offset_feedback(result3,input_offset3,3,status);


% clear rms_error_bpm rms_error_quad rms_error
% for i=1:20
%     weight_factor=1e-10*10^i;
%     w3=DFS_set_weight_factor(status,weight_factor);
%     result3=runDFS(status,R2,x3,w3);
%     a=[result3.qoffset_calculated-input_offset3.qoffset_real]';
%     b=[result3.bpmoffset_calculated-input_offset3.bpmoffset_real]';
%     rms_error_quad(i)=sqrt(mean(a.^2));
%     rms_error_bpm(i)=sqrt(mean(b.^2));
% end
% figure;
% subplot(3,1,1);plot(rms_error_quad(1,1:20),'DisplayName','rms_error_quad(1,1:20)','YDataSource','rms_error_quad(1,1:20)');figure(gcf)
% subplot(3,1,2);plot(rms_error_bpm(1,1:20),'DisplayName','rms_error_bpm(1,1:20)','YDataSource','rms_error_bpm(1,1:20)');figure(gcf)
% rms_error=rms_error_quad+0.1*rms_error_bpm;
% subplot(3,1,3);plot(rms_error(1,1:20),'DisplayName','rms_error(1,1:20)','YDataSource','rms_error(1,1:20)');figure(gcf)
