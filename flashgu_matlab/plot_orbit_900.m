function plot_orbit_900(status,measured_orbit1,measured_orbit2)
%plot orbits at 900MeV

figure;
plot(status.zBpm_new,measured_orbit1.orbit3,'-r*',status.zBpm_new,measured_orbit2.orbit3,'-b*');grid on;
legend('orbit before 1st correction','orbit after 1st correction',0);
legend('boxoff');
title('Orbit at 900MeV');