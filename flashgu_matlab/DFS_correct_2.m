% run 2nd DFS
measured_orbit2=Readbpm(2);
input_offset2=Read_real_offset(2);

[measured_orbit2,input_offset2,status]=modify_meas_input(measured_orbit2,input_offset2,status);
[xMeas2,xLagr2]=DFS_BpmDataGet(status,measured_orbit2,input_offset2);
R=DFS_ResMatGet(status,QRmat,LRmat);
x2=[xMeas2;xLagr2];

weight_factor=1e4;
w=[weight_factor*ones(size(xMeas2));ones(size(xLagr2))];
result2=runDFS(status,R,x2,w);
plot_offset(result2,input_offset2,2);
offset_feedback(feedback_gain_factor,result2,input_offset2,2,status);


% clear rms_error_bpm rms_error_quad rms_error
% for i=1:20
%     weight_factor=1e-10*10^i;
%     w=[weight_factor*ones(size(xMeas2));ones(size(xLagr2))];
%     result2=runDFS(status,R,x2,w);
%     a=[result2.qoffset_calculated-input_offset2.qoffset_real]';
%     b=[result2.bpmoffset_calculated-input_offset2.bpmoffset_real]';
%     rms_error_quad(i)=sqrt(mean(a.^2));
%     rms_error_bpm(i)=sqrt(mean(b.^2));
% end
% rms_error=rms_error_quad+0.1*rms_error_bpm;
% plot(rms_error(1,1:20),'DisplayName','rms_error(1,1:20)','YDataSource','rms_error(1,1:20)');
