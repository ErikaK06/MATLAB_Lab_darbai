% 2026-09-24, 9 variantas, Erika KUtyrina

t = 0:0.002:1.2;
A = 5.5;
f = 8;
sigma = 0.8;
U1 = 3.5;
U2 = 1.5;

s = A * sin(2*pi*f*t);
n = sigma * randn(size(t));
s_n = s + n;

s_filt = s_n;
s_filt(abs(s_filt) < U2) = 0;

figure(1);

subplot(1, 2, 1);
plot(t, s_n, '--', 'LineWidth', 1.5);
hold on;
plot(t, s_filt, ':', 'LineWidth', 1.5);
plot([min(t) max(t)], [U1 U1], 'k-');
plot([min(t) max(t)], [U2 U2], '-', 'Color', [0.5 0 0.5]);
plot([min(t) max(t)], [-U2 -U2], '-', 'Color', [0.5 0 0.5]);
grid on;
xlabel('Laikas t, s');
ylabel('Itampa, V');
title('Signalu palyginimas', 'Color', [0.5 0 0.5], 'FontSize', 16);
legend('Pradinis signalas', 'Filtruotas signalas', 'U_1 riba', '+U_2 riba', '-U_2 riba', 'Location', 'best');
axis([min(t) max(t) min(s_n)-1 max(s_n)+1]);
hold off;

subplot(1, 2, 2);
idx = s_n > U1;
stem(t(idx), s_n(idx));
hold on;

max_idx = s_n == max(s_n);
min_idx = s_n == min(s_n);

plot(t(max_idx), s_n(max_idx), 'c*', 'MarkerSize', 8);
plot(t(min_idx), s_n(min_idx), 'ro', 'MarkerSize', 6);

grid on;
xlabel('Laikas t, s');
ylabel('Itampa, V');
title('Reiksmes virsijancios U_1', 'Color', [0.5 0 0.5], 'FontSize', 16);
legend('Signalas > U_1', 'Maksimali reiksme', 'Minimali reiksme', 'Location', 'best');
axis([min(t) max(t) min(s_n)-1 max(s_n)+1]);
hold off;