load irisdata.txt      % Cargamos el dataset IRIS
X = irisdata(:,1:4)';       % Guardamos los datos en una matriz de 150 renglones y 4 columnas
spec = irisdata(:,5)';      % Las especies de cada flor las almacenamos en un vector ya encodificadas
n = size(X,2);
rho = norm(A,'fro')^2   
X% total variation of data
figure(1)                   % Graficamos cada variable del dataset con respecto a otra
for i=1:4
  for j=1:i-1
     subplot(3,3,(i-1)+3*(j-1))
     %scatter(X(i,:),X(j,:))
     scatter(X(i,:),X(j,:),7,spec,'filled')
     xlabel(sprintf('x%g',i)); ylabel(sprintf('x%g',j))
  end
end
Xmean = mean(X,2)           % Encontramos la media
A = X - Xmean*ones(1,n); % Restamos la media
A=A'
C = cov(A)  %Calculamos la matriz de covarianzas
[V,D] = eig(C) %Ahora encontramos los autovalores y autovectores
diag(D) %Mostramos los autovalores
newdata = V' * A'; %Transformamos los datos originales con la matriz de autovectores
newdata = newdata';
newdata = fliplr(newdata)
var(newdata) %Encontramos las varianzas de los datos transformados
varianzas=var(newdata)/sum(var(newdata)) %Normalizamos las varianzas
figure(2)
scatter([1,2,3,4],varianzas,"red") %Graficamos las varianzas normalizadas de cada una de las variables
figure(3)
scatter(newdata(:,1),newdata(:,2),27,spec,'filled')
figure(4)
scatter3(newdata(:,1),newdata(:,2),newdata(:,3),27,spec,'filled') %Graficamos los datos después de una reducción a 3 dimensiones