% run 3rd DFS
measured_orbit3=Readbpm(3);
input_offset3=Read_real_offset(3);

[measured_orbit3,input_offset3,status]=modify_meas_input(measured_orbit3,input_offset3,status);
[x3,xMeas3,xconstrain3]=DFS_BpmDataGet(status,measured_orbit3,input_offset3);
[R3,Rmag3,Rconstrain3]=DFS_ResMatGet(status,QRmat,LRmat);

weight_factor=1e3;
w=DFS_set_weight_factor(status,weight_factor);
result3=runDFS(status,R3,x3,w);
plot_offset(result3,input_offset3,3);
offset_feedback(feedback_gain_factor,result3,input_offset3,3,status);


% clear rms_error_bpm rms_error_quad rms_error
% for i=1:10
%     weight_factor=10^i;
%     w=[weight_factor*ones(size(xMeas3));ones(size(xLagr3))];
%     result3=runDFS(status,R,x3,w);
%     a=[result3.qoffset_calculated-input_offset3.qoffset_real]';
%     b=[result3.bpmoffset_calculated-input_offset3.bpmoffset_real]';
%     rms_error_quad(i)=sqrt(mean(a.^2));
%     rms_error_bpm(i)=sqrt(mean(b.^2));
% end
% rms_error=rms_error_quad+0.1*rms_error_bpm;
% plot(rms_error(1,1:10),'DisplayName','rms_error(1,1:10)','YDataSource','rms_error(1,1:10)');figure(gcf)
% 
