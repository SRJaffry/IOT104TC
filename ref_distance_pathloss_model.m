%% We have considered distance-dependent pathloss model. 
clc;
clear all;
clf;
%close all;

Pt = 1;
PtdB = 10*log10(Pt)
do = 1;
alpha = 2;
PL0 = 30;
total_realizations =1000;
 
d_ = 0.1:0.1:5;
idx =1;
for d = d_
    H_channel = sqrt(1/2)*(randn(1,total_realizations) + 1i*randn(1,total_realizations));
    H = (abs(H_channel)).^2;     
    PL(idx) = 10*alpha*log10(d/do) + PL0;
    Pr(idx) = 10*log10(Pt) - PL(idx);
    Pr2(idx) = Pr(idx) + mean(10*log10(H));
    idx = idx+1;
end

figure(1); 
subplot(2,1,1); hold on;  grid on;
title('log-distance pathloss')
plot(d_, PL);
ylabel('Pathloss (dB)');

subplot(2,1,2); hold on;  grid on;
title('Received power')
plot(d_, Pr);
plot(d_, Pr2); %plot(d_, 10.^(Pr2/10));
ylabel('Received power (dB)');
xlabel('Distance (meters)');
legend('Without Rayleigh fading', 'With Rayleigh fading')
