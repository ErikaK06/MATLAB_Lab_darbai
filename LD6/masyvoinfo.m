% Data: 2026-10-15
% Variantas: 5
% Erika Kutyrina

function [minimumas, maksimumas, vidurkis] = masyvoinfo(masyvas)
minimumas = min(masyvas);
    maksimumas = max(masyvas);
    vidurkis = mean(masyvas);
end