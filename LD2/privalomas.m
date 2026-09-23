% 2026-09-17, 20 variantas, Erika Kutyrina

v_a = 10:-1:-15
v_b = log2(v_a)
v_c = v_a ./ v_b
v_d = v_c'

Cm1 = pi/2 : pi/2 : 3*pi/2;
Cm2 = -1 : 1;
Cm3 = -3 : -1 : -5;
C = [Cm1; Cm2; Cm3]
eiluciu_sumos = sum(C, 2)

A = 5.5;
f = 8;
sigma = 0.8;
U1 = 3.5;
U2 = 1.5;
t = 0:0.002:1.2;

s = A * sin(2*pi*f*t);
n = sigma * randn(size(t));
s_signalas = s + n;

atrinktos_reiksmes = s_signalas(s_signalas > U1)

s_filtruotas = s_signalas;
s_filtruotas(abs(s_filtruotas) < U2) = 0

nefiltruoto_dydis = length(s_signalas)

atrinktu_reiksmiu_dydis = length(atrinktos_reiksmes)

maksimali_itampa = max(s_filtruotas)
minimali_itampa = min(s_filtruotas)