[~, bg3, ~] = Bernstein();

b = [4, 5.2, 5.2, 3.85; -2.5, -2.5, -0.5 -1.5];
Coada1B = b * bg3;

hold on;
title('Algoritmul lui Casteljeau');
plot(b(1, :), b(2, :), '.-.r', 'Markersize', 20);
fill(Coada1B(1, :), Coada1B(2, :), 'c');
plot(Coada1B(1, :), Coada1B(2, :), 'Color', 'black', 'Linewidth', 3);
t = 1 / 2;
b1 = zeros(2, 3);
b2 = zeros(2, 2);
b3 = zeros(2, 1);

% Nivelul 1 a matricii sistolice:
for i = 1:3
    b1(:, i) = b(:, i) .* (1 - t) + b(:, i + 1) .* t;
end

% Nivelul 2 a matricii sistolice:
for i = 1:2
    b2(:, i) = b1(:, i) .* (1 - t) + b1(:, i + 1) .* t;
end

% Nivelul 3 a matricii sistolice:
b3(:, 1) = b2(:, 1) .* (1 - t) + b2(:, 2) .* t;

plot(b1(1, :), b1(2, :), '-g.', 'Markersize', 20);
plot(b2(1, :), b2(2, :), '-c.', 'Markersize', 20);
plot(b3(1, :), b3(2, :), 'm.', 'Markersize', 30);

hold off