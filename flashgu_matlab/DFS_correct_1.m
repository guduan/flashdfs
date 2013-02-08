% run 1st DFS
measured_orbit1=Readbpm(1);
input_offset1=Read_real_offset(1);

[measured_orbit1,input_offset1,status]=modify_meas_input(measured_orbit1,input_offset1,status);
[x1,xMeas1,xconstrain1]=DFS_BpmDataGet(status,measured_orbit1,input_offset1);
[R1,Rmag1,Rconstrain1]=DFS_ResMatGet(status,QRmat,LRmat);

weight_factor=1e3;
w1=DFS_set_weight_factor(status,weight_factor);
result1=runDFS(status,R1,x1,w1);
plot_offset(result1,input_offset1,1);
offset_feedback(result1,input_offset1,1,status);



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