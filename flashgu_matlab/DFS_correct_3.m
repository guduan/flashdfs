% run 3rd DFS
measured_orbit3.orbit1=Readbpm3(600);
measured_orbit3.orbit2=Readbpm3(720);
measured_orbit3.orbit3=Readbpm3(900);
input_offset3=Read_real_offset(3);

[measured_orbit3,input_offset3,status]=modify_meas_input(measured_orbit3,input_offset3,status);
use_noise=1;% add noise on bpm readings

[RALL,RLagr]=DFS_ResMatGet(status,QRmat);
[xMeas3,xLagr3]=DFS_BpmDataGet(status,measured_orbit3,use_noise,input_offset3);

R=[RALL;RLagr];
x3=[xMeas3;xLagr3];

weight_factor=1e3;
w=[weight_factor*ones(size(xMeas3));ones(size(xLagr3))];
result3=runDFS(status,R,x3,w);
plot_offset(result2,input_offset3,3);
offset_feedback(0.8,result3,input_offset3,3,status);