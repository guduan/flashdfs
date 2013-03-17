% back up

% drow an arrow.
 text(,0,'sin(5*pi/6)=0.5\uparrow',...
       'HorizontalAlignment','right',...
       'FontSize',12)


% »­Í¼Ìí¼Ó×¢ÊÍ
% ***************************************
% Quad offsets calculated which remove linear component

% figure;
% plot(status.zQuad_new,result.qoffset_calculated,'r*',status.zBpm_new,result.bpmoffset_calculated,'b*');hold on;
% plot(status.zQuad_new,y1,'r',status.zBpm_new,y2,'b');
% legend('Quad Offset calculated','Bpm Offset calculated','line fit of Quad Offset','line fit of Bpm Offset',0);
% % legend('boxoff');
% xlabel('position z (m)');ylabel('Offsets (um)');
% titlestr={['Quad and BPM offsets Fit'];
%     ['Quad offset fit:     x= ',num2str(y1(2)*1e6),' um ','   xp= ',num2str(y1(1)*1e6),' urad'];
%     [' Bpm offset fit:     x= ',num2str(y2(2)*1e6),' um ','   xp= ',num2str(y2(1)*1e6),' urad']};
% title(titlestr);

% ***************************************
for j=1:10
for i=1:10
    weight_factor=10^i;
    w=[weight_factor*ones(size(xMeas1));ones(size(xLagr1))];
    result1=runDFS(status,R,x1,w);
    a=[result1.qoffset_calculated-input_offset1.qoffset_real]';
    b=[result1.bpmoffset_calculated-input_offset1.bpmoffset_real]';
    rms_error_quad(i)=sqrt(mean(a.^2));
    rms_error_bpm(i)=sqrt(mean(b.^2));
end
rms_error=rms_error_quad+0.1*rms_error_bpm;
minimum=min(rms_error);

%%%%%%%%%%%%%%%%%%%%%%%%%
