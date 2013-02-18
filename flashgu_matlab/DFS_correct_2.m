% run 2nd DFS
measured_orbit2=Readbpm(2);
input_offset2=Read_real_offset(2);

[measured_orbit2,input_offset2,status]=modify_meas_input(measured_orbit2,input_offset2,status);
[x2,xMeas2,xconstrain2]=DFS_BpmDataGet(status,measured_orbit2,input_offset2);
[R2,Rmag2,Rconstrain2]=DFS_ResMatGet(status,QRmat,LRmat);

weight_factor=1e5;
w2=DFS_set_weight_factor(status,weight_factor);
result2=runDFS(status,R2,x2,w2);
plot_offset(result2,input_offset2,2);
offset_feedback(result2,input_offset2,2,status);

% clear rms_error_bpm rms_error_quad rms_error
% for i=1:20
%     weight_factor=1e-10*10^i;
%     w2=DFS_set_weight_factor(status,weight_factor);
%     result2=runDFS(status,R2,x2,w2);
%     a=[result2.qoffset_calculated-input_offset2.qoffset_real]';
%     b=[result2.bpmoffset_calculated-input_offset2.bpmoffset_real]';
%     rms_error_quad(i)=sqrt(mean(a.^2));
%     rms_error_bpm(i)=sqrt(mean(b.^2));
% end
% figure;
% subplot(3,1,1);plot(rms_error_quad(1,1:20),'DisplayName','rms_error_quad(1,1:20)','YDataSource','rms_error_quad(1,1:20)');figure(gcf)
% subplot(3,1,2);plot(rms_error_bpm(1,1:20),'DisplayName','rms_error_bpm(1,1:20)','YDataSource','rms_error_bpm(1,1:20)');figure(gcf)
% rms_error=rms_error_quad+0.1*rms_error_bpm;
% subplot(3,1,3);plot(rms_error(1,1:20),'DisplayName','rms_error(1,1:20)','YDataSource','rms_error(1,1:20)');figure(gcf)
