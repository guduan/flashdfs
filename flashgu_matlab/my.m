% clc;
% QRmat1=getQRmat(Tmat1,elemlist1);
% QRmat2=getQRmat(Tmat2,elemlist2);
% QRmat3=getQRmat(Tmat3,elemlist3);
% % useQuadlist=[0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0];
% % useBpmlist=[1     1     1     1     1     1     1     1     1     1,...
% %                         1     1     1     1     1     1     1     1     1     1,...
% %                         1     1     1     1     1     1     1];
% useQuadlist=[3 5 7 9 13];
% a=1:nQuad;
% unuseQuadlist=setdiff(a,useQuadlist);
% unuseBpmlist=[1 2 3];
% 
% 
% nQuad_new=length(useQuadlist);
% nBpm_new=nBpm-length(unuseBpm);
% 
% a=1:nQuad;
% unuseQuadlist=setdiff(a,useQ);
% 
% QRmat1(:,unuseQuadlist)=[];
% QRmat1(unuseBpm,:)=[];
% % for i=1:nQuad_new
% %     if(useQuadlist(i)==0)
% %         QRmat1(:,i)=[];
% %         QRmat2(:,i)=[];
% %         QRmat3(:,i)=[];
% %     end
% % end
% % for i=1:nBpm_new
% %     if(useBpmlist(i)==0)
% %         QRmat1(i,:)=[];
% %         QRmat2(i,:)=[];
% %         QRmat3(i,:)=[];
% %     end
% % end
% %  a=1:nQuad;
% %  b=[3 5 7 9 13];
% %  c=setdiff(a,b)
tabulate(magic(5))