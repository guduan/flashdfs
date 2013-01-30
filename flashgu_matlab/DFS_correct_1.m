[RALL,RLagr]=DFS_ResMatGet(status,QRmat);
[xMeas1,xLagr1]=DFS_BpmDataGet(status,measured_orbit1,use_noise,input_offset1);

R=[RALL;RLagr];
x1=[xMeas1;xLagr1];

weight_factor=1e3;
w=[weight_factor*ones(size(xMeas1));ones(size(xLagr1))];
result1=runDFS(status,R,x1,w);
plot_offset(result1,input_offset1,1);
offset_feedback(0.8,result1,input_offset1,1,status);