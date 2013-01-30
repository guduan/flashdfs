function LRmat=DFS_LRmat_Get(Tmat,status)
% get Quad Response Matrix from full Transport Matrices
global elegant_file_root

if (exist([elegant_file_root 'LaunchMatrice_900MeV.mat'],'file'))
    disp('Launch Matrix already exist,waiting for loading');
    load([elegant_file_root 'LaunchMatrice_600MeV.mat']);
    load([elegant_file_root 'LaunchMatrice_720MeV.mat']);
    load([elegant_file_root 'LaunchMatrice_900MeV.mat']);
    disp('Launch Matrix looading is DONE');
else
    disp('Launch Matrix NOT ready, waiting for calculation');
    LRmat1=getLRmat(Tmat.Tmat1,status.elemlist);
    LRmat2=getLRmat(Tmat.Tmat2,status.elemlist);
    LRmat3=getLRmat(Tmat.Tmat3,status.elemlist);
    
    save([elegant_file_root 'LaunchMatrice_600MeV.mat'],'LRmat1');
    save([elegant_file_root 'LaunchMatrice_720MeV.mat'],'LRmat2');
    save([elegant_file_root 'LaunchMatrice_900MeV.mat'],'LRmat3');
    disp('Launch Matrix calculation DONE.');
end

LRmat.LRmat1=LRmat1;
LRmat.LRmat2=LRmat2;
LRmat.LRmat3=LRmat3;