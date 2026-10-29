% Data: 2026-10-15
% Variantas: 5
% Erika Kutyrina


clear;
clc;

global x rezultatas;

x = 0:0.1:2*pi;

skaiciuok_sin_cos;

whos global;

figure;
plot(x, rezultatas, ':bs', 'MarkerFaceColor', 'b');
title('sin(x) + cos(x)');
xlabel('x');
ylabel('Rezultatas');
grid on;