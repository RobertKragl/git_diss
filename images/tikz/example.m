t = 0:0.3:10;
y = sin(t*(2*pi/10))*10;

plot(t, y)      % Testplot erzeugen

xlim([-0.1 10.1]);
ylim([-12.4  12.4]);
xlabel('$U$ in $\si{\volt}$');
ylabel('$t$ in $\si{\second}$');

% matlab2tikz erzeugt eine Datei, die alle Datenpunkte des aktiven Plots
% enthält.

cleanfigure; 
matlab2tikz('sin.tex', 'width', '\figurewidth', 'height', '\figureheight', 'parseStrings', false);



% Zweiten Plot erstellen

t = 0:0.005:10;

y = zeros(1, length(t));
for i=1:9
    y = y + 1/(2*i-1)*sin(t*((2*i-1)*2*pi/10))*40/pi;
end

plot(t, y)
hold on
% graue Linien zur Kennzeichnung des Overshoots einfügen
plot([-10 10], [-11.8 -11.8], '--',  'Color', [0.7 0.7 0.7]); 
plot([-10 10], [11.8 11.8], '--',  'Color', [0.7 0.7 0.7]);
plot([-10 10], [9 9], '--',  'Color', [0.7 0.7 0.7]);
plot([-10 10], [-9 -9], '--', 'Color', [0.7 0.7 0.7]);
hold off

set(gca, 'YTick', [-11.8 -10 -9 -5 0 5 9 10 11.8]);

xlim([-0.1 10.1]);
ylim([-12.4  12.4]);
xlabel('$U$ in $\si{\volt}$');  % Achsenbeschriftung
ylabel('$t$ in $\si{\second}$');

cleanfigure;
matlab2tikz('rect.tex', 'width', '\figurewidth', 'height', '\figureheight', 'parseStrings', false);
