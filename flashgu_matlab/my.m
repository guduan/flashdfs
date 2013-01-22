clc;
a1=importdata([elegant_file_root 'flash_dfs10.mat1']);
b1=a1.data;

 for i=1:nElement
     for j=1:6
         for k=1:6
             Tmat1(j,k,i)=b1(i+1,(j-1)*6+k);
         end
     end
 end
 
Rmat=getTmatAll(Tmat1,33,44);
Qmat=Tmat1(:,:,33);
QR=(1-Qmat(1,1))*Rmat(1,1)-Qmat(2,1)*Rmat(1,2);
QR2=getTmatAll(Tmat1,33,44)-getTmatAll(Tmat1,32,44);
a=QR2(1,1)