% 2026-09-24, 1 variantas, Erika Kutyrina

t = linspace(-pi, pi, 50);
y_t = sin(t);
figure(1);
plot(t, y_t, 'r--');
grid on;
axis([min(t) max(t) min(y_t) max(y_t)]);
xlabel('t');
ylabel('y(t)');
title('y(t) = sin(t)');
legend('sin(t)', 'Location', 'best');

x = linspace(-pi, pi, 50);
y1_x = -x.^2 + 9;
y2_x = x.^3 - 2.*x.^2 - 9;
figure(2);
plot(x, y1_x, x, y2_x);
grid on;
axis([min(x) max(x) min([y1_x, y2_x]) max([y1_x, y2_x])]);
xlabel('x');
ylabel('y(x)');
title('Polinomu grafikai');
legend('y(x) = -x^2 + 9', 'y(x) = x^3 - 2x^2 - 9', 'Location', 'best');

M = randi([4, 10], 6, 4)
figure(3);
subplot(2, 1, 1);
bar(M');
ylim([0, 10]);
xlabel('Laboratorinis darbas');
ylabel('Pazymys');
title('Studentu pazangumas');
legend('V.A.', 'A.G.', 'D.N.', 'A.T.', 'E.S.', 'J.S.', 'Location', 'bestoutside');

subplot(2, 1, 2);
vidurkiai = mean(M, 2)
stem(1:6, vidurkiai);
ylim([0, 10]);
xlabel('Studentas');
ylabel('Vidurkis');
title('Studentu vidurkiai');