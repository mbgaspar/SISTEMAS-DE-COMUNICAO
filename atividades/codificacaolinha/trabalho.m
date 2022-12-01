close all;clc;
bits = [1,0,0,1,0,1,1,0];
T = 1; greed = 0:T/length(bits):T;

[tURZ,xURZ]       = URZ(1,bits);
[tBRZ,xBRZ]       = BRZ(1,bits);
[tUNRZ,xUNRZ]     = UNRZ(1,bits);
[tBNRZ,xBNRZ]     = BNRZ(1,bits);
[tPQNRZn,xPQNRZn] = PQNRZ(1,bits,1,'n');
[tPQNRZg,xPQNRZg] = PQNRZ(1,bits,1,'g');

figure('Name', 'Trabalho 1 - Codigos de linha');
subplot(3,2,1); plot(tURZ,xURZ,'linewidth',1.5);
title('Unipolar RZ'); set(gca,'XTick',greed);
grid();

subplot(3,2,2); plot(tBRZ,xBRZ,'linewidth',1.5);
title('Bipolar RZ'); set(gca,'XTick',greed);
grid();

subplot(3,2,3); plot(tUNRZ,xUNRZ,'linewidth',1.5);
title('Unipolar NRZ'); set(gca,'XTick',greed);
grid();

subplot(3,2,4); plot(tUNRZ,xUNRZ,'linewidth',1.5);
title('Bipolar NRZ'); set(gca,'XTick',greed);
grid();

subplot(3,2,5); plot(tPQNRZn,xPQNRZn,'linewidth',1.5);
title('Polar Quaternario NRZ natural'); set(gca,'XTick',greed);
grid();

subplot(3,2,6); plot(tPQNRZg,xPQNRZg,'linewidth',1.5);
title('Polar Quaternario NRZ gray'); set(gca,'XTick',greed);
grid();