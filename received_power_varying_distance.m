clc;
clear all;
close all;

Pt = 1e-3; % Transmit power
Gt = 2; %Trasmit Antenna gain
Gr = 2; %Receive Antenna gain
f = 2.4e9; % operating frequency
c = 3e8; %Speed of light

d = 1:0.1:10;
Pr = Pt*Gr*Gt*(c/(f*4*pi))^2*(1./d).^2;
Prdb = 10*log10(Pr);

figure(1);
hold on;
grid on;
plot(Pr)

xlabel('distance (meters)', 'Fontsize', 16);
ylabel('Received power (Watt)', 'Fontsize', 16);
title('Linear Scale') 

figure(2);
hold on;
grid on;
plot(Prdb)

xlabel('distance (meters)', 'Fontsize', 16);
ylabel('Received power (dB)', 'Fontsize', 16);
title('Log Scale')