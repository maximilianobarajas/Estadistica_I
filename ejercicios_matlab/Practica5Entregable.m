%Maximiliano Barajas Sanchez 2213026283
%Omar Aldair Hernandez Velasco 2213026372

%Simulación de dado balanceado
 n=10;
 p = 1/6;
 x = rand(1,n);
 dado = zeros(1,n);
 for i=1:n
     if x(i) <= 1/6
         dado(i) = 1;
      elseif (1/6 < x(i)) && (x(i) <= 2/6)
         dado(i) = 2;
      elseif (2/6 < x(i)) && (x(i) <= 3/6)
         dado(i) = 3;
      elseif (3/6 < x(i)) && (x(i) <= 4/6)
         dado(i) = 4;
      elseif (4/6 < x(i)) && (x(i) <= 5/6)
         dado(i) = 5;
      elseif (5/6 < x(i)) && (x(i) <= 6/6)
         dado(i) = 6;
     end
 end
disp(dado)

% VARIABLES ALEATORIAS
% variable aleatoria UNIFORME
% n peque?o => variabilidad a corto plazo
% n grande => variabilidad a largo plazo


% Utilizando randi y el segundo metodo Calcular media, mediana, moda, desviaci?n estandar, varianza, coeficiente
% de variaci?n para n= 100,10,1000,10000,100000.
n =[10,100,1000,10000,100000]; %Guardamos en un vector los valores de n (lanzamientos del dado)
for j=1:length(n) %Por cada número de lanzamientos realizaremos un histograma y calcularemos las medidas de dispersión
        dado = randi(6,1,n(j));  % Genera numeros aleatorios de forma uniforme en un vector de longitud n
        figure(j)
        h=histogram(dado); %Genera el histograma sobre los datos generados aleatoriamente según su frecuencia
        str1=append('Cantidad obtenida al lanzar un dado: ',num2str(n(j)));
        xlabel(str1)
        ylabel('frecuencia')
        tbl=tabulate(dado); %Tabulamos los datos
        %figure(j)
        %bar(tbl(:,1),tbl(:,2))
        %bar(tbl(:,1),tbl(:,3))
        %xlabel('Cantidad obtenida al lanzar un dado')
        %ylabel('frecuencia relativa porcentual')
        fprintf("Medidas de dado con n=%f \n", n(j)) %Calculamos y mostramos las medidas de dispersión
        fprintf("Media")
        disp(mean(dado))
        fprintf("Mediana")
        disp(median(dado))
        fprintf("Moda")
        disp(mode(dado))
        fprintf("Desviacion Estandar")
        disp(std(dado))
        fprintf("Varianza")
        disp(std(dado)^2)
        fprintf("Coeficiente de variacion")
        CoefVar=std(dado)/mean(dado);
        disp(CoefVar)
end

