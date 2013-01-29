clc;clear all;
global elegant_file_root  matlab_file_root

elegant_file_root='E:\gitHub\flashdfs\flashgu\';
matlab_file_root='E:\gitHub\flashdfs\flashgu_matlab\';

[Tmat1,QRmat1,status]=init_BBA(600);
[Tmat2,QRmat2,~]=init_BBA(720);
[Tmat3,QRmat3,~]=init_BBA(900);
measured_orbit.orbit1=Readbpm0(600);
measured_orbit.orbit2=Readbpm0(720);
measured_orbit.orbit3=Readbpm0(900);
input_offset=Read_real_offset(1);

Tmat.Tmat1=Tmat1;
Tmat.Tmat2=Tmat2;
Tmat.Tmat3=Tmat3;

QRmat.QRmat1=QRmat1;
QRmat.QRmat2=QRmat2;
QRmat.QRmat3=QRmat3;

[Tmat,QRmat,status,measured_orbit,input_offset]=element_choose(Tmat,QRmat,status,measured_orbit,input_offset);
%******************
% add noise on bpm readings
use_noise=1;

%******************
[RALL,RLagr]=DFS_ResMatGet(status,QRmat);
[xMeas,xLagr]=DFS_BpmDataGet(status,measured_orbit,use_noise,input_offset);

R=[RALL;RLagr];
x=[xMeas;xLagr];

weight_factor=1e3;
w=[weight_factor*ones(size(xMeas));ones(size(xLagr))];

result=runDFS(status,R,x,w);
plot_offset(result,input_offset);




