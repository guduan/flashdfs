function orbit=Readbpm2(energy)
% used to read Bpm readings;
% but for now, it can only read the "real" orbit position from ELEGANT, if
% you want simulate orbit measurement in real world, Please add BPM offsets
% manually.
global elegant_file_root
orbit=0;
switch energy
    case 600
        orbit=textread([elegant_file_root 'flash_dfs11.orbit'],'%*n %*s %n' );
    case 720
        orbit=textread([elegant_file_root 'flash_dfs12.orbit'],'%*n %*s %n' );
    case 900
        orbit=textread([elegant_file_root 'flash_dfs13.orbit'],'%*n %*s %n' );
    otherwise
        disp('Do you really want apply 5th correction??');
end

aa=['Orbit Measurement for Energy ',num2str(energy),'MeV is DONE.'];
disp(aa);