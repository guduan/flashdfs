function [Tmat,QRmat,status]=init_BBA(energy)
% initial BBA DFS procedure
% Energy in MeV
% normal_energy in FLASH is 1200MeV
global elegant_file_root


if nargin<1
    disp('error input in function init_BBA');
end
normal_energy=1200;
status.beamline=getline_flash(energy/normal_energy);
status.elemlist=getList(status.beamline,energy);

status.nBpm=length(status.elemlist.bpmid);
status.nCorr=length(status.elemlist.corrid);
status.nQuad=length(status.elemlist.quadid);
status.nElement=length(status.beamline);
status.zBpm=status.elemlist.zBpm;
status.zQuad=status.elemlist.zQuad;

Tmat=zeros(6,6,status.nElement);
QRmat=zeros(status.nBpm,status.nQuad);

% derive Transport Matrice form ELEGANT
%----------------------------------------------------
switch energy
    case 600
        if (exist([elegant_file_root 'TransportMatrice_600MeV.mat'],'file'))
            aa=['Transport Matrix and Response Matrix for energy ',num2str(energy),' already exist,waiting for loading'];
            disp(aa);
            load([elegant_file_root 'TransportMatrice_600MeV.mat']);
            load([elegant_file_root 'ResponseMatrice_600MeV.mat']);
        else
            aa=['Transport Matrix and Response Matrix for energy ',num2str(energy),' NOT exist,waiting for calculation'];
            disp(aa);
            a=importdata([elegant_file_root 'flash_dfs01.mat1']);
            b=a.data;
            for i=1:status.nElement
                for j=1:6
                    for k=1:6
                        Tmat(j,k,i)=b(i+1,(j-1)*6+k);
                    end
                end
            end
            QRmat=getQRmat(Tmat,status.elemlist);
            save([elegant_file_root 'TransportMatrice_600MeV.mat'],'Tmat');
            save([elegant_file_root 'ResponseMatrice_600MeV.mat'],'QRmat');
            aa=['Transport Matrix and Response Matrix calculation for energy ',num2str(energy),' is DONE'];
            disp(aa);
        end
        
    case 720
        if (exist([elegant_file_root 'TransportMatrice_720MeV.mat'],'file'))
            aa=['Transport Matrix and Response Matrix for energy ',num2str(energy),' already exist,waiting for loading'];
            disp(aa);
            load([elegant_file_root 'TransportMatrice_720MeV.mat']);
            load([elegant_file_root 'ResponseMatrice_720MeV.mat']);
        else
            aa=['Transport Matrix and Response Matrix for energy ',num2str(energy),' NOT exist,waiting for calculation'];
            disp(aa);
            a=importdata([elegant_file_root 'flash_dfs02.mat1']);
            b=a.data;
            for i=1:status.nElement
                for j=1:6
                    for k=1:6
                        Tmat(j,k,i)=b(i+1,(j-1)*6+k);
                    end
                end
            end
            QRmat=getQRmat(Tmat,status.elemlist);
            save([elegant_file_root 'TransportMatrice_720MeV.mat'],'Tmat');
            save([elegant_file_root 'ResponseMatrice_720MeV.mat'],'QRmat');
            aa=['Transport Matrix and Response Matrix calculation for energy ',num2str(energy),' is DONE'];
            disp(aa);
        end
        
    case 900
        if (exist([elegant_file_root 'TransportMatrice_900MeV.mat'],'file'))
            aa=['Transport Matrix and Response Matrix for energy ',num2str(energy),' already exist,waiting for loading'];
            disp(aa);
            load([elegant_file_root 'TransportMatrice_900MeV.mat']);
            load([elegant_file_root 'ResponseMatrice_900MeV.mat']);
        else
            aa=['Transport Matrix and Response Matrix for energy ',num2str(energy),' NOT exist,waiting for calculation'];
            disp(aa);
            a=importdata([elegant_file_root 'flash_dfs03.mat1']);
            b=a.data;
            for i=1:status.nElement
                for j=1:6
                    for k=1:6
                        Tmat(j,k,i)=b(i+1,(j-1)*6+k);
                    end
                end
            end
            QRmat=getQRmat(Tmat,status.elemlist);
            save([elegant_file_root 'TransportMatrice_900MeV.mat'],'Tmat');
            save([elegant_file_root 'ResponseMatrice_900MeV.mat'],'QRmat');
            aa=['Transport Matrix and Response Matrix calculation for energy ',num2str(energy),' is DONE'];
            disp(aa);
        end
        
    otherwise
        disp('Transport Matrix and Response Matrix NOT READY for input energy, Please calculate first!');
end






%{


if (exist([elegant_file_root 'TransportMatrice_900MeV.mat'],'file'))
    disp('Transport Matrix and Response Matrix already exist,waiting for loading');
    load([elegant_file_root 'TransportMatrice_600MeV.mat']);
    load([elegant_file_root 'ResponseMatrice_600MeV.mat']);
    load([elegant_file_root 'TransportMatrice_720MeV.mat']);
    load([elegant_file_root 'ResponseMatrice_720MeV.mat']);
    load([elegant_file_root 'TransportMatrice_900MeV.mat']);
    load([elegant_file_root 'ResponseMatrice_900MeV.mat']);
    disp('Transport Matrix and Response Matrix looading DONE');
else
    disp('Transport Matrix NOT ready, waiting for calculation');
    a1=importdata([elegant_file_root 'flash_dfs01.mat1']);
    a2=importdata([elegant_file_root 'flash_dfs02.mat1']);
    a3=importdata([elegant_file_root 'flash_dfs03.mat1']);
    b1=a1.data;
    b2=a2.data;
    b3=a3.data;
    
    for i=1:status.nElement
        for j=1:6
            for k=1:6
                Tmat1(j,k,i)=b1(i+1,(j-1)*6+k);
            end
        end
    end
    
    for i=1:status.nElement
        for j=1:6
            for k=1:6
                Tmat2(j,k,i)=b2(i+1,(j-1)*6+k);
            end
        end
    end
    
    for i=1:status.nElement
        for j=1:6
            for k=1:6
                Tmat3(j,k,i)=b3(i+1,(j-1)*6+k);
            end
        end
    end
    % calculate Response Matrix
    QRmat1=getQRmat(Tmat1,status.elemlist1);
    QRmat2=getQRmat(Tmat2,status.elemlist2);
    QRmat3=getQRmat(Tmat3,status.elemlist3);
    
    save([elegant_file_root 'TransportMatrice_600MeV.mat'],'Tmat1');
    save([elegant_file_root 'ResponseMatrice_600MeV.mat'],'QRmat1');
    save([elegant_file_root 'TransportMatrice_720MeV.mat'],'Tmat2');
    save([elegant_file_root 'ResponseMatrice_720MeV.mat'],'QRmat2');
    save([elegant_file_root 'TransportMatrice_900MeV.mat'],'Tmat3');
    save([elegant_file_root 'ResponseMatrice_900MeV.mat'],'QRmat3');
    disp('Transport Matrix calculation DONE.');
end

%}







