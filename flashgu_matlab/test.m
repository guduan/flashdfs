% run 1st DFS, show impact of weight factor
measured_orbit1=Readbpm(1);
input_offset1=Read_real_offset(1);

[measured_orbit1,input_offset1,status]=modify_meas_input(measured_orbit1,input_offset1,status);
[xMeas1,xLagr1]=DFS_BpmDataGet(status,measured_orbit1,use_noise,input_offset1);
R=DFS_ResMatGet(status,QRmat,LRmat);
x1=[xMeas1;xLagr1];

clear num
for j=1:10
for i=1:10
    weight_factor=10^i;
    w=[weight_factor*ones(size(xMeas1));ones(size(xLagr1))];
    result1=runDFS(status,R,x1,w);
    a=[result1.qoffset_calculated-input_offset1.qoffset_real]';
    b=[result1.bpmoffset_calculated-input_offset1.bpmoffset_real]';
    rms_error_quad(i)=sqrt(mean(a.^2));
    rms_error_bpm(i)=sqrt(mean(b.^2));
end
rms_error=rms_error_quad+0.1*rms_error_bpm;
minimum=min(rms_error);
num(j)=find(rms_error==minimum);
pause(0.1)
end