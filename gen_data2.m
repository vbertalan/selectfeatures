% Gera dados para a s�rie WINEQ
% 28/08/2015 - FEEC/Unicamp
%
function [] = gen_data2()
aleat = 5;
load wineq;
nl = length(X(:,1));
X = [X rand(nl,aleat)];
save dados2 X S;
