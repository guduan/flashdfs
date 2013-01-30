% run 4th DFS
measured_orbit4=Readbpm(4);
input_offset4=Read_real_offset(4);

[measured_orbit4,input_offset4,status]=modify_meas_input(measured_orbit4,input_offset4,status);
use_noise=1;% add noise on bpm readings

[RALL,RLagr]=DFS_ResMatGet(status,QRmat);
[xMeas4,xLagr4]=DFS_BpmDataGet(status,measured_orbit4,use_noise,input_offset4);

R=[RALL;RLagr];
x4=[xMeas4;xLagr4];

weight_factor=1e3;
w=[weight_factor*ones(size(xMeas4));ones(size(xLagr4))];
result4=runDFS(status,R,x4,w);
% plot_offset(result4,input_offset4,4);
offset_feedback(feedback_gain_factor,result4,input_offset4,4,status);