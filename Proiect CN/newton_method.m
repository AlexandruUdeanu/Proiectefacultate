clear, clc

% Seteaza estimarea initiala (x0), epsilon, numarul maxim de iteratii
% si o matrice unde va fi adaugat noul x0 la fiecare iteratie
x0 = 0.2;
epsilon = 10.^-6;
maxiter = 10;
N = 4;
array_x = x0;

% In cazul in care N=0, afiseaza eroare
if N==0
    error('N trebuie sa fie diferit de 0.');
end

% Defineste functia si derivata sa
f = @(x) 1/x - N;
df = @(x) -1/x^2;


% Metoda lui Newton
for niter = 1:maxiter
    fx = f(x0);
    if abs(fx) < epsilon
        break;
    end
    dfx = df(x0);
    x0 = x0 - fx/dfx;
    
    fprintf('Valoarea lui x este %.6f\n', x0);
    array_x = [array_x, x0]
end

[invN, errors] = newton_results(N, array_x(1), epsilon, maxiter);

% Afiseaza rezultatul si numarul de iteratii
fprintf('Solutia este x = %f dupa %d iteratii\n', x0, niter);


fprintf('%10s %20s %20s\n', 'Iteratie', 'Solutie', 'Eroare');
for i = 1:length(errors)
    fprintf('%10d %20.6f %20.6e\n', i-1, array_x(i), errors(i));
    if errors(i) < epsilon
        break;
    end
end

% errors(end+1)=[0];
% plot(array_x, errors,'-*b','MarkerSize',9)

%y=a-1:epsilon:b+1;
%plot(y,subs(f,y),'-b');
%plot(double(array_x),double(subs(f,array_x)),'*r');
% plot(x(n),subs(f,x(n)),'ok','MarkerSize',8);

% figure
% plot(errors)
% title('Erorile la fiecare iteratie')

% figure
% plot(array_x)
% title('Valoarea lui x la fiecare iteratie')


