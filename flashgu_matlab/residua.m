% % scan bpm noise VS residua
% for i=1:11
%     status.bpm_noise_level=2e-6*(i-1);
%     DFS_correct_1; 
%     residue_qoffset(i)=sqrt(mean((result1.qoffset_calculated-input_offset1.qoffset_real).^2));
%     residue_bpmoffset(i)=sqrt(mean((result1.bpmoffset_calculated-input_offset1.bpmoffset_real).^2));
% end

% scan SVD threshold VS residua
for i=1:4
    status.svdthreshold=1e-5*10^(i-1);
    DFS_correct_1; 
    residue_qoffset(i)=sqrt(mean((result1.qoffset_calculated-input_offset1.qoffset_real).^2));
    residue_bpmoffset(i)=sqrt(mean((result1.bpmoffset_calculated-input_offset1.bpmoffset_real).^2));
end

figure;
subplot(2,1,1);plot(1:4,residue_qoffset,'r-o');set(gca,'XTick',[0 1 2 3 4])
title('Residual Quad offset after 1st correction');
subplot(2,1,2);plot(1:4,residue_bpmoffset,'b-o');
title('Residual BPM offset after 1st correction');