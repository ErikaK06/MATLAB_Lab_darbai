% 2026-10-01, Variantas: 22, Erika Kutyrina

x = linspace(-2, 2, 20);
y = linspace(-2, 2, 20);
z = linspace(-1, 1, 20);
[X, Y, Z] = meshgrid(x, y, z);
F1 = sin((X.^2 + Y.^2 + Z.^2) / 20) .* exp(-(X.^2 + Y.^2 + Z.^2));

figure;
slice(X, Y, Z, F1, 0, 0, 0);
shading interp;
colormap jet;
view(90, 30);
xlabel('X asis');
ylabel('Y asis');
zlabel('Z asis');
title('Trimatis turio grafikas');
grid on;

x2 = linspace(-2, 2, 50);
y2 = linspace(-2, 2, 50);
[X2, Y2] = meshgrid(x2, y2);
F2 = sin(abs(X2 + Y2) / 20) .* exp(-abs(X2 + Y2));

figure;
surf(X2, Y2, F2);
shading interp;
colormap jet;
view(60, 30);
xlabel('X asis');
ylabel('Y asis');
zlabel('Z asis');
title('Trimatis pavirsiaus grafikas');
grid on;