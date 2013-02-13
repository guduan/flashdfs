
figure;
subplot(3,2,1);
plot(status.zBpm_new,measured_orbit1.orbit1','-xg',...
    status.zBpm_new,measured_orbit1.orbit2','-xb',...
    status.zBpm_new,measured_orbit1.orbit3','-xr');
title('Orbits before correction');

subplot(3,2,2);
plot(status.zBpm_new,measured_orbit2.orbit1','-xg',...
    status.zBpm_new,measured_orbit2.orbit2','-xb',...
    status.zBpm_new,measured_orbit2.orbit3','-xr');
title('Orbits after 1st correction');

subplot(3,2,3);
plot(status.zBpm_new,measured_orbit3.orbit1','-xg',...
    status.zBpm_new,measured_orbit3.orbit2','-xb',...
    status.zBpm_new,measured_orbit3.orbit3','-xr');
title('Orbits after 2nd correction');

subplot(3,2,4);
plot(status.zBpm_new,measured_orbit4.orbit1','-xg',...
    status.zBpm_new,measured_orbit4.orbit2','-xb',...
    status.zBpm_new,measured_orbit4.orbit3','-xr');
title('Orbits after 3rd correction');

subplot(3,2,5:6);
plot(status.zBpm_new,measured_orbit5.orbit1','-xg',...
    status.zBpm_new,measured_orbit5.orbit2','-xb',...
    status.zBpm_new,measured_orbit5.orbit3','-xr');
title('Orbits after 4th correction');
legend('orbit at 600MeV','orbit at 720MeV','orbit at 900MeV','Location','SouthEast');

figure;
rms_orbit(1)=sqrt(mean(measured_orbit1.orbit3.^2));
rms_orbit(2)=sqrt(mean(measured_orbit2.orbit3.^2));
rms_orbit(3)=sqrt(mean(measured_orbit3.orbit3.^2));
rms_orbit(4)=sqrt(mean(measured_orbit4.orbit3.^2));
rms_orbit(5)=sqrt(mean(measured_orbit5.orbit3.^2));
plot(0:4,rms_orbit,'-sb','LineWidth',2,'MarkerEdgecolor','m','MarkerSize',10);
xlabel('Number of Iteration');
ylabel('RMS value of Orbit (m)');
for i=1:5
    a=['   \leftarrow',num2str(rms_orbit(i))];
    text(i-1,rms_orbit(i),a);
end
set(gca, 'XLim',[0 5]);
% set(gca,'XTick',0:5);
title('RMS orbit   VS   iteration');