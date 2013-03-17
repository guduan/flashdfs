% run 4th DFS
status.opts=struct( ...
    'usenoise',1,...
    'useLinQuad',0,...
    'useMinQuad',1,...
    'useLinBpm',0,...
    'useMinBpm',0,...
    'useLaunchfit',1);
status.feedback_gain_factor=1;
status.bpm_noise_level=0;
status.svdthreshold=1e-5;
status.fitScale=1;
% ***************************************
measured_orbit4=Readbpm(4);
input_offset4=Read_real_offset(4);

[measured_orbit4,input_offset4,status]=modify_meas_input(measured_orbit4,input_offset4,status);
[x4,xMeas4,xconstrain4]=DFS_BpmDataGet(status,measured_orbit4,input_offset4);
[R4,Rmag4,Rconstrain4]=DFS_ResMatGet(status,QRmat,LRmat);
plot_orbit(status,measured_orbit4,3);

weight_factor=1e5;
w4=DFS_set_weight_factor(status,weight_factor);
result4=runDFS(status,R4,x4,w4);
result4=DFS_launch_fit(status,result4);
plot_offset1(result1,input_offset4,4,status);
offset_feedback(result4,input_offset4,4,status);


%***************************************************
% just see what happend after 4th iteration
checkfile([elegant_file_root,'flash_dfs43.orbit']);
measured_orbit5=Readbpm(5);
input_offset5=Read_real_offset(5);
[measured_orbit5,input_offset5,status]=modify_meas_input(measured_orbit5,input_offset5,status);

% clear rms_error_bpm rms_error_quad rms_error
% for i=1:10
%     weight_factor=10^i;
%     w=[weight_factor*ones(size(xMeas4));ones(size(xLagr4))];
%     result4=runDFS(status,R,x4,w);
%     a=[result4.qoffset_calculated-input_offset4.qoffset_real]';
%     b=[result4.bpmoffset_calculated-input_offset4.bpmoffset_real]';
%     rms_error_quad(i)=sqrt(mean(a.^2));
%     rms_error_bpm(i)=sqrt(mean(b.^2));
% end
% rms_error=rms_error_quad+0.1*rms_error_bpm;
% plot(rms_error(1,1:10),'DisplayName','rms_error(1,1:10)','YDataSource','rms_error(1,1:10)');figure(gcf)

%*******************
