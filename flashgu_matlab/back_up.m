% back up
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
