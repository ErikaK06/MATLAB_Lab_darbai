% 2026-10-08, Privalomas variantas: 14, Erika Kutyrina

stud(1).vardas = 'Erika';
stud(1).pavarde = 'Kutyrina';
stud(1).grupe = 25;
stud(1).pazymiai = [8, 8, 7, 9, 10];

stud(2).vardas = 'Jonas';
stud(2).pavarde = 'Jonas';
stud(2).grupe = 25;
stud(2).pazymiai = [10, 6, 7, 8, 9];

stud(3).vardas = 'Vytautas';
stud(3).pavarde = 'Vytautas';
stud(3).grupe = 25;
stud(3).pazymiai = [10, 10, 10, 10, 10];

stud(1).pazymiai(3) = 10;
disp(stud(1).pazymiai);

while true
    m = input('Įveskite skaičių m: ');
    n = input('Įveskite skaičių n: ');

    if m == n
        break;
    end

    x = m;
    y = n;

    while x ~= y
        if x > y
            x = x - y;
        else
            y = y - x;
        end
    end

    disp(x);
end