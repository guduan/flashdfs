% run 2nd DFS
measured_orbit2=Readbpm(2);
input_offset2=Read_real_offset(2);

[measured_orbit2,input_offset2,status]=modify_meas_input(measured_orbit2,input_offset2,status);
[xMeas2,xLagr2]=DFS_BpmDataGet(status,measured_orbit2,use_noise,input_offset2);
R=DFS_ResMatGet(status,QRmat,LRmat);
x2=[xMeas2;xLagr2];

weight_factor=1e3;
w=[weight_factor*ones(size(xMeas2));ones(size(xLagr2))];
result2=runDFS(status,R,x2,w);
% plot_offset(result2,input_offset2,2);
offset_feedback(feedback_gain_factor,result2,input_offset2,2,status);