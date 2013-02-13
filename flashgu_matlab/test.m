
% plot(measured_orbit3.orbit3,'r*')
% linefit=polyfit(status.zBpm_new,measured_orbit3.orbit3',1);
% measured_orbit3.orbit3_new=measured_orbit3.orbit3-status.zBpm_new'.*linefit(1)-linefit(2);
% figure;
% plot(measured_orbit3.orbit3_new,'r*')
% 
% 
% plot(status.zBpm_new,measured_orbit1.orbit1,'rd')
clc;
figure;
subplot(3,2,1);
plot(status.zBpm_new,measured_orbit1.orbit3','-xr');
title('Orbits before correction');

subplot(3,2,2);
plot(status.zBpm_new,measured_orbit2.orbit3','-xr');
title('Orbits after 1st correction');

subplot(3,2,3);
plot(status.zBpm_new,measured_orbit3.orbit3','-xr');
title('Orbits after 2nd correction');

subplot(3,2,4);
plot(status.zBpm_new,measured_orbit4.orbit3','-xr');
title('Orbits after 3rd correction');

subplot(3,2,5:6);
plot(status.zBpm_new,measured_orbit5.orbit3','-xr');
title('Orbits after 4th correction');


figure;
subplot(2,1,1);
plot(status.zBpm_new,measured_orbit3.orbit3','-xr');
a=['RMS(x) =  ',num2str(sqrt(mean(measured_orbit3.orbit3.^2))),'  Max(x)= ',num2str(max(abs(measured_orbit3.orbit3'),[],2))];
title(a);
linefit=polyfit(status.zBpm_new,measured_orbit3.orbit3',1);
measured_orbit3.orbit3_new=measured_orbit3.orbit3-status.zBpm_new'.*linefit(1)-linefit(2);
subplot(2,1,2);
plot(status.zBpm_new,measured_orbit3.orbit3_new,'-xr');
a=['RMS(x) =  ',num2str(sqrt(mean(measured_orbit3.orbit3_new.^2))),'  Max(x)= ',num2str(max(abs(measured_orbit3.orbit3_new'),[],2))];
title(a);



figure;
subplot(2,1,1);
plot(status.zBpm_new,measured_orbit4.orbit3','-xr');
a=['RMS(x) =  ',num2str(sqrt(mean(measured_orbit4.orbit3.^2))),'  Max(x)= ',num2str(max(abs(measured_orbit4.orbit3'),[],2))];
title(a);
linefit=polyfit(status.zBpm_new,measured_orbit4.orbit3',1);
measured_orbit4.orbit3_new=measured_orbit4.orbit3-status.zBpm_new'.*linefit(1)-linefit(2);
subplot(2,1,2);
plot(status.zBpm_new,measured_orbit4.orbit3_new,'-xr');
a=['RMS(x) =  ',num2str(sqrt(mean(measured_orbit4.orbit3_new.^2))),'  Max(x)= ',num2str(max(abs(measured_orbit4.orbit3_new'),[],2))];
title(a);




figure;
subplot(2,1,1);
plot(status.zBpm_new,measured_orbit5.orbit3','-xr');
a=['RMS(x) =  ',num2str(sqrt(mean(measured_orbit5.orbit3.^2))),'  Max(x)= ',num2str(max(abs(measured_orbit5.orbit3'),[],2))];
title(a);
linefit=polyfit(status.zBpm_new,measured_orbit5.orbit3',1);
measured_orbit5.orbit3_new=measured_orbit5.orbit3-status.zBpm_new'.*linefit(1)-linefit(2);
subplot(2,1,2);
plot(status.zBpm_new,measured_orbit5.orbit3_new,'-xr');
a=['RMS(x) =  ',num2str(sqrt(mean(measured_orbit5.orbit3_new.^2))),'  Max(x)= ',num2str(max(abs(measured_orbit5.orbit3_new'),[],2))];
title(a);