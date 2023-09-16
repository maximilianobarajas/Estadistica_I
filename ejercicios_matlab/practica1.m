%vector = {'a', 'b','b','c','a', 'a','a','c','b'}';
refresco = {'pepsi', 'coca','coca','red','big', 'coca','pepsi','pepsi','big','pepsi','pepsi'}';

%function Frecuencia(vector)

% Metodo 1
%errores = { '0' , '0' , '1' , '2' , '3' , '1' , '1' , '3' , '1' , '3'} 
animales= {'perro','gato','gato','perro','perro','gato','perro','perro','cochinito','perro','gato','gato'}';
vector=animales
V = findgroups(vector) % a cada valor le asigna un n?mero
U = unique(V);  % los valores que existen
sU = length(U);
Frequencia = zeros(1,sU);
for c= 1:sU
    map=V==U(c);
    Frequencia(c) = sum(map); %sum(sum(map));
end

Tabla = table(U,Frequencia') % crea tabla de frecuencias
figure(1)
bar(Frequencia) % crea gr?fica de barras
xlabel('variable descriptiva')
ylabel('frecuencia')
title('FRECUENCIA')
