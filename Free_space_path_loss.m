clc;
clear all;
close all;
 
c = 3e8; 
Const = 20*log10(4*pi/c);

f1 = 10000; % 10khz
f2 = 1e6; % 1MHz;
f3 = 1e9; % 1GHz;

d = 1:1000;
FSPL_1 = 20*log10(f1.*d) + Const;
FSPL_2 = 20*log10(f2.*d) + Const;
FSPL_3 = 20*log10(f3.*d) + Const;

% for d = 1:1000   
%     FSPL(d) = 20*log10(f*d) + Const;    
%     d_(d) = d;
% end

figure(1); grid on; hold on;
plot(d, FSPL_1, '-*b');
plot(d, FSPL_2, '-*r');
plot(d, FSPL_3, '-*g');
xlabel('Distance (meter)');
ylabel('Pathloss (dB)');
Ax = legend('f = 10 Khz', 'f = 1 MHz', '1 GHz'); 
Ax.FontSize = 14;