
load process_Mask.mat 
load process_teta.mat
load process_D.mat 
load fil.mat

s1 = dataMaskAC;
% s2 = dataD_AC;


s2 = dataTeta_AC;

t1 = (0:length(s1)-1)/fe;
t2 = (0:length(s2)-1)/fe;

subplot(2,1,1)
plot(t1,s1);
title('Mask')

subplot(2,1,2)
plot(t2,-s2)
title('Acc - Teta')
xlabel('Time (s)')


[acor,lag] = xcorr(s1,s2,'coeff');

[~,I] = max(abs(acor));
lagDiff = lag(I);
timeDiff = lagDiff/fe;

figure
plot(lag/fe,acor)
title('Cross correllation - AC value - Teta - ')

