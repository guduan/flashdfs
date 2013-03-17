function plot_orbit(status,measured_orbit,correction_number)
%plot orbits

figure;
plot(status.zBpm_new,measured_orbit.orbit1,'-r*');grid on;hold on;
plot(status.zBpm_new,measured_orbit.orbit2,'-b*');grid on;hold on;
plot(status.zBpm_new,measured_orbit.orbit3,'-g*');grid on;

legendstr={['En=600MeV, \sigma =',num2str(sqrt(mean(measured_orbit.orbit1.^2))*1e6),' um'];
    ['En=720MeV, \sigma =',num2str(sqrt(mean(measured_orbit.orbit2.^2))*1e6),' um'];
    ['En=900MeV, \sigma =',num2str(sqrt(mean(measured_orbit.orbit3.^2))*1e6),' um']};
% legend('orbit at 600MeV','orbit at 720MeV','orbit at 900MeV',0);hold off;
legend(legendstr,0);
legend('boxoff');
hold off;
switch correction_number
    case 0
        title('Orbits before 1st correction');
    case 1
        title('Orbits after 1st correction');
    case 2
        title('Orbits after 2nd correction');
    case 3
        title('Orbits after 3rd correction');
    case 4
        title('Orbits after 4th correction');
end