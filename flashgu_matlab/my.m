clc;
diffQR=QRmat1-QRmat2;
difforbit=orbit_real1-orbit_real2;
qoffset_calculated=pinv(diffQR)*difforbit;
tt1=cell2mat({qoffset_calculated,qoffset_real});
figure;
bar(tt1);title('Quad-Offset comparison after 1st correction');