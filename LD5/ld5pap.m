% 2026-10-08, Papildomas variantas: 20, Erika Kutyrina

x = input('Įveskite skaičių x: ');
y = input('Įveskite skaičių y: ');

for iteracija = 1:20
    m = randi([1, x]);
    n = randi([1, y]);

    A = zeros(x, y);
    A(m, n) = NaN;

    disp(A);
    pause(0.5);
    clc;
end