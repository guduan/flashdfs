% run 1st DFS
measured_orbit1=Readbpm(1);
input_offset1=Read_real_offset(1);

[measured_orbit1,input_offset1,status]=modify_meas_input(measured_orbit1,input_offset1,status);
[xMeas1,xLagr1]=DFS_BpmDataGet(status,measured_orbit1,use_noise,input_offset1);
R=DFS_ResMatGet(status,QRmat,LRmat);
x1=[xMeas1;xLagr1];

weight_factor=1e3;
w=[weight_factor*ones(size(xMeas1));ones(size(xLagr1))];
result1=runDFS(status,R,x1,w);
% plot_offset(result1,input_offset1,1);
offset_feedback(feedback_gain_factor,result1,input_offset1,1,status);