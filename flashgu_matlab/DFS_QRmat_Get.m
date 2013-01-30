function QRmat=DFS_QRmat_Get(Tmat,status)
% get Quad Response Matrix from full Transport Matrices
global elegant_file_root

if (exist([elegant_file_root 'ResponseMatrice_900MeV.mat'],'file'))
    disp('Response Matrix already exist,waiting for loading');
    load([elegant_file_root 'ResponseMatrice_600MeV.mat']);
    load([elegant_file_root 'ResponseMatrice_720MeV.mat']);
    load([elegant_file_root 'ResponseMatrice_900MeV.mat']);
    disp('Response Matrix looading is DONE');
else
    disp('Response Matrix NOT ready, waiting for calculation');
    QRmat1=getQRmat(Tmat.Tmat1,status.elemlist);
    QRmat2=getQRmat(Tmat.Tmat2,status.elemlist);
    QRmat3=getQRmat(Tmat.Tmat3,status.elemlist);
    
    save([elegant_file_root 'ResponseMatrice_600MeV.mat'],'QRmat1');
    save([elegant_file_root 'ResponseMatrice_720MeV.mat'],'QRmat2');
    save([elegant_file_root 'ResponseMatrice_900MeV.mat'],'QRmat3');
    disp('Response Matrix calculation DONE.');
end

QRmat.QRmat1=QRmat1;
QRmat.QRmat2=QRmat2;
QRmat.QRmat3=QRmat3;