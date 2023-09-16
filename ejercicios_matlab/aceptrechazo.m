%Maximiliano Barajas Sánchez 2213026283
%Omar Aldair Hernández Velasco 2213026372
n=1000;
c=6; %maximo de f(x)
x=zeros(1,n);%Puntos en x guardados
xy=zeros(1,n);%Puntos en y guardados
rej=zeros(1,n); %Rechazados en x
rejy=zeros(1,n); %Rechazados en y
irv=1;        
irej=1;
while irv<=n
  a = 1;
  b = 6;
  y = (b-a).*rand(1) + a; %Generamos un número aleatorio entre 1 y 6 con distribución uniforme
  u=rand;%Generamos la u entre 0 y 1
  if(u<=densidad(y)/c)   %Evaluamos la condición para guardar los puntos
    x(irv)=y;
    xy(irv)=u*c;  %Guardamos los valores si es que se cumple la condición
    irv=irv+1;
  else   %En caso contrario rechazamos los puntos dado que no se encuentran bajo la función
    rej(irej)=y;
    rejy(irej)=u*c; %Rechazamos los valores que no cumplen la condición
    irej=irej+1;
  end
end
 h=histogram(x); %Generamos el histograma de los datos guardados
 figure(2)
 xd=1:6;
 fxd=zeros(1,6);
 for i=1:6
   fxd(i)=densidad(xd(i));
 end
 hold on
 plot(x,xy,'r*',rej,rejy,'o') %Graficamos los datos guardados y rechazados divididos por la función escalonada
 stairs(xd,fxd)
 hold off


%Aqui se encuentra nuestra función de probabilidad 
function x=densidad(y)
for i=1:6  
  if(y<1)
      x=0;
  elseif(y<2)
      x=0.5;
  elseif(y<3)
      x=0.75;
  elseif(y<4)
      x=.90;
  elseif(y<5)
      x=.94;
  elseif(y<6)
      x=.97;
  elseif(6<=y)
      x=1;
  end
end
end