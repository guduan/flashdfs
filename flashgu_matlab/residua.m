% % scan SVD threshold VS residua
% 
% clear residu*
% 
% status.svdthreshold=0;
% DFS_correct_1;
% residue_qoffset(1)=sqrt(mean((result1.qoffset_calculated-input_offset1.qoffset_real).^2));
% residue_bpmoffset(1)=sqrt(mean((result1.bpmoffset_calculated-input_offset1.bpmoffset_real).^2));
% 
% for i=2:11
% % status.svdthreshold=1e-5*10^(i-2);
% status.svdthreshold=2e-5*(i-1);
%     result1=runDFS(status,R1,x1,w1);
%     residue_qoffset(i)=sqrt(mean((result1.qoffset_calculated-input_offset1.qoffset_real).^2));
%     residue_bpmoffset(i)=sqrt(mean((result1.bpmoffset_calculated-input_offset1.bpmoffset_real).^2));
% end
SVDthreshold=[0 1e-5 2e-5 5e-5 1e-4 5e-4 1e-3 5e-3 1e-2];
DFS_correct_1;
for i=1:length(SVDthreshold)
    status.svdthreshold=SVDthreshold(i);
    result1=runDFS(status,R1,x1,w1);
    residue_qoffset(i)=sqrt(mean((result1.qoffset_calculated-input_offset1.qoffset_real).^2));
    residue_bpmoffset(i)=sqrt(mean((result1.bpmoffset_calculated-input_offset1.bpmoffset_real).^2));
end

figure;
subplot(2,1,1);
plot(residue_qoffset,'r-o');
% set(gca,'XTick',0:5);
set(gca,'XTickLabel',{'0' '1e-5' '2e-5' '5e-5' '1e-4' '5e-4' '1e-3' '5e-3' '1e-2'});
title('Residual Quad offset after 1st correction');
xlabel('SVD Threshold');%ylabel('Residua of Quad offset');
subplot(2,1,2);plot(residue_bpmoffset,'b-o');
% set(gca,'XTick',0:5);
set(gca,'XTickLabel',{'0' '1e-5' '2e-5' '5e-5' '1e-4' '5e-4' '1e-3' '5e-3' '1e-2'});
title('Residual BPM offset after 1st correction');
xlabel('SVD Threshold');%ylabel('Residua of Quad offset');