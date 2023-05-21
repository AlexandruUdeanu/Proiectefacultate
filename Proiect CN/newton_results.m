function [invN, errors] = newton_results(N, x0, epsilon, maxiter)
% Inputs:
% N - numarul caruia ii trebuie gasit inversul
% x0 - estimare initiala pentru invers
% epsilon - Toleranta pentru solutie
% maxiter - numarul maxim de iteratii
%
% Outputs:
% invN - inversul lui N
% errors - matrice de erori pentru fiecare iteratie

% Initierea variabilelor
x = x0;
err = epsilon + 1;
niter = 0;
errors = [];

% Defineste functia si derivata
f = @(x) 1/x - N;
df = @(x) -1/x^2;

% Itereaza pana cand eroarea este epsilon sau s-a atins iteratiile maxime
while err > epsilon && niter < maxiter
    x_new = x - f(x) / df(x);
    err = abs(x_new - x);
    x = x_new;
    niter = niter + 1;
    errors(niter) = err;
end

% Verifica daca numarul maxim de iteratii s-a atins fara convergenta
if niter == maxiter
    warning('S-a atins numarul maxim de iteratii fara convergenta.')
end

% Returneaza inversul lui N si erorile
invN = x;
end