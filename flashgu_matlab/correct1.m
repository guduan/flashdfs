function [xfinal0,y0]=correct1(xfinal0,R0)

global nBpm nCorr nQuad c q b zBpm  xinit
%apply correction
%lanch_x=xfinal(1:2);
corr_xoffset=xfinal0(3:2+nCorr);
quad_xoffset=xfinal0(3+nCorr:2+nCorr+nQuad);
bpm_xoffset=xfinal0(3+nCorr+nQuad:2+nCorr+nQuad+nBpm);
%�����ĸ����ǽ��������ҪУ����ֵ
xinit=xinit-xfinal0(1:2);
c=c-corr_xoffset;
q=q-0.8*quad_xoffset;
b=b-bpm_xoffset;
%��ȥ���ֵ���γ�һ���µ��������
xx=[xinit;c;q;b];
y0=R0*xx;

%give the orbit and plot the orbit
%plot(zBpm,y,'color','black');
%hold on
%��������������£���һ��У������Ҫ�ĸ���У��ֵ
xfinal0=lssvd(R0,y0);


