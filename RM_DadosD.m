

%   Autor : Diego Martins Gomes - Matrícula: 375186 (Eng.Elétrica)

% Regressao Multipla %
% MAtriz de dados x,y,z. %

D =[   122 139 0.115; 
       114 126 0.120; 
       086 090 0.105; 
       134 144 0.090; 
       146 163 0.100; 
       107 136 0.120; 
       068 061 0.105; 
       117 062 0.080; 
       071 041 0.100; 
       098 120 0.115 ]; 
    
hold on; %Permite adicionar mais de um gráfico%

plot3(D(:,1),D(:,2),D(:,3),'*');

grid on;

title('Grafico 3D dos dados de D')

xlabel('Eixo X')

ylabel('Eixo Y')

zlabel('Eixo Z')

X=[ones(10,1),D(:,1), D(:,2)];



beta=((X'*X)^(-1)*X'*D(:,3));

[X1,X2]=meshgrid(30:0.8:150,30:0.8:150);

y_chap = beta(1)+beta(2)*X1+beta(3).*X2;
y_chap1= beta(1)+beta(2)*D(:,1)+beta(3).*D(:,2);
mesh(X1,X2,y_chap);

y = (D(:,3));
n=length(y);


%Analise dos coeficientes:


i=0;
while (i<=n)
   e = y(1:i,1)-y_chap1(1:i,1)  %calculo do erro
   i=i+1;
end
 

SQe = sum((e).^2);

Syy = sum((y-mean(y)).^2);

R2= 1 - (SQe/Syy); % calculando o coeficiente de determinacao

display('Coeficiente de Determinação : ')

display(R2)











