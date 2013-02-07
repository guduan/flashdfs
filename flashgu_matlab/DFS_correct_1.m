% run 1st DFS
measured_orbit1=Readbpm(1);
input_offset1=Read_real_offset(1);

[measured_orbit1,input_offset1,status]=modify_meas_input(measured_orbit1,input_offset1,status);
[x1,xMeas1,xconstrain1]=DFS_BpmDataGet(status,measured_orbit1,input_offset1);
[R1,Rmag1,Rconstrain1]=DFS_ResMatGet(status,QRmat,LRmat);

weight_factor=1e3;
w=DFS_set_weight_factor(status,weight_factor);
result1=runDFS(status,R1,x1,w);
plot_offset(result1,input_offset1,1);
offset_feedback(feedback_gain_factor,result1,input_offset1,1,status);
