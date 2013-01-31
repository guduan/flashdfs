function orbit=Readbpm(correction_number)
% used to read Bpm readings;
% but for now, it can only read the "real" orbit position from ELEGANT, if
% you want simulate orbit measurement in real world, Please add BPM offsets
% manually.
global elegant_file_root

switch correction_number
    case 1
        orbit1=textread([elegant_file_root 'flash_dfs1.orbit'],'%*n %*s %n' );
        orbit2=textread([elegant_file_root 'flash_dfs2.orbit'],'%*n %*s %n' );
        orbit3=textread([elegant_file_root 'flash_dfs3.orbit'],'%*n %*s %n' );
    case 2
        orbit1=textread([elegant_file_root 'flash_dfs11.orbit'],'%*n %*s %n' );
        orbit2=textread([elegant_file_root 'flash_dfs12.orbit'],'%*n %*s %n' );
        orbit3=textread([elegant_file_root 'flash_dfs13.orbit'],'%*n %*s %n' );
    case 3
        orbit1=textread([elegant_file_root 'flash_dfs21.orbit'],'%*n %*s %n' );
        orbit2=textread([elegant_file_root 'flash_dfs22.orbit'],'%*n %*s %n' );
        orbit3=textread([elegant_file_root 'flash_dfs23.orbit'],'%*n %*s %n' );
    case 4
        orbit1=textread([elegant_file_root 'flash_dfs31.orbit'],'%*n %*s %n' );
        orbit2=textread([elegant_file_root 'flash_dfs32.orbit'],'%*n %*s %n' );
        orbit3=textread([elegant_file_root 'flash_dfs33.orbit'],'%*n %*s %n' );
    case 5
        orbit1=textread([elegant_file_root 'flash_dfs41.orbit'],'%*n %*s %n' );
        orbit2=textread([elegant_file_root 'flash_dfs42.orbit'],'%*n %*s %n' );
        orbit3=textread([elegant_file_root 'flash_dfs43.orbit'],'%*n %*s %n' );
    otherwise
        disp('5th correction is NOT Ready now!');
end

orbit.orbit1=orbit1;
orbit.orbit2=orbit2;
orbit.orbit3=orbit3;

aa=['Orbit Measurement for correction ',num2str(correction_number),' is DONE.'];
disp(aa);