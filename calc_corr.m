% C�lculo do coeficiente de correla��o amostral de Pearson entre duas vari�veis
% Recebe como entrada dois vetores de mesma dimens�o, cada um representando uma das vari�veis.
% Uma fun��o similar do Matlab � corrcoef().
% 28/08/2015 - FEEC/Unicamp
%
function [coef] = calc_cor1(v1,v2)
N = length(v1);
X = [v1 v2];
for i=1:2,
    Xmed(1,i) = sum(X(:,i))/(length(X(:,i)));
end
for i=1:2,
    desv(1,i) = sqrt((sum((X(:,i)-Xmed(i)).^2))/(length(X(:,i))-1));
end
cov = (sum((X(:,1)-Xmed(1)).*(X(:,2)-Xmed(2))))/(length(X(:,1))-1);
coef = cov/(desv(1)*desv(2));
