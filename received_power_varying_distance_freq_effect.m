clc;
clear all;
close all;

Pt = 1e-3; % Transmit power
Gt = 2; %Trasmit Antenna gain
Gr = 2; %Receive Antenna gain
f1 = 900e6; % 900 MHz operating frequency
f2 = 2.0e9; % 2.0 GHz operating frequency
f3 = 2.4e9; % 2.4 GHz operating frequency
f4 = 3.8e9; % 3.8 GHz operating frequency
c = 3e8; %Speed of light

d = 1:0.1:10;
Pr1 = Pt*Gr*Gt*(c/(f1*4*pi))^2*(1./d).^2;
Prdb1 = 10*log10(Pr1);

Pr2 = Pt*Gr*Gt*(c/(f2*4*pi))^2*(1./d).^2;
Prdb2 = 10*log10(Pr2);

Pr3 = Pt*Gr*Gt*(c/(f3*4*pi))^2*(1./d).^2;
Prdb3 = 10*log10(Pr3);

Pr4 = Pt*Gr*Gt*(c/(f4*4*pi))^2*(1./d).^2;
Prdb4 = 10*log10(Pr4);

figure(1);
hold on;
grid on;
box on;
plot(Pr1);
plot(Pr2);
plot(Pr3);
plot(Pr4);

xlabel('distance (meters)', 'Fontsize', 16);
ylabel('Received power (Watt)', 'Fontsize', 16);
Ax = legend('f = 900 MHz', 'f = 2.0 GHz', 'f = 2.4 GHz', 'f = 3.8');
Ax.FontSize = 12;
title('Linear Scale') 

figure(2);
hold on;
grid on;
box on;
plot(Prdb1);
plot(Prdb2);
plot(Prdb3);
plot(Prdb4);

xlabel('distance (meters)', 'Fontsize', 16);
ylabel('Received power (dB)', 'Fontsize', 16);
Ax = legend('f = 900 MHz', 'f = 2.0 GHz', 'f = 2.4 GHz', 'f = 3.8');
Ax.FontSize = 12;
title('Log Scale')