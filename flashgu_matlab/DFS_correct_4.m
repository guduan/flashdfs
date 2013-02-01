% run 4th DFS
measured_orbit4=Readbpm(4);
input_offset4=Read_real_offset(4);

[measured_orbit4,input_offset4,status]=modify_meas_input(measured_orbit4,input_offset4,status);
[xMeas4,xLagr4]=DFS_BpmDataGet(status,measured_orbit4,use_noise,input_offset4);
R=DFS_ResMatGet(status,QRmat,LRmat);
x4=[xMeas4;xLagr4];

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


weight_factor=1e6;
w=[weight_factor*ones(size(xMeas4));ones(size(xLagr4))];
result4=runDFS(status,R,x4,w);
plot_offset(result4,input_offset4,4);

offset_feedback(feedback_gain_factor,result4,input_offset4,4,status);

checkfile([elegant_file_root,'flash_dfs43.orbit']);
%*******************
% just see what happend after 4th iteration
measured_orbit5=Readbpm(5);
input_offset5=Read_real_offset(5);

[measured_orbit5,input_offset5,status]=modify_meas_input(measured_orbit5,input_offset5,status);
[xMeas5,xLagr5]=DFS_BpmDataGet(status,measured_orbit5,use_noise,input_offset5);