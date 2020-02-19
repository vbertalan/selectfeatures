% Ordenação de variáveis segundo o módulo do coeficiente de correlação
% amostral de Pearson
% Recebe como entrada os vetores a serem ordenados e o vetor de referência.
% 28/08/2015 - FEEC/Unicamp
%
function [] = filtro_lin(n_file)
load(n_file);
N_vet = length(X(1,:));
for i=1:N_vet,
    coef(i,1) = abs(calc_corr(X(:,i),S));
end
[list_ord,ind_ord] = sort(coef,'descend');
list_ord = list_ord(:);ind_ord = ind_ord(:);
list_ord = [1;list_ord];
ind_ord = [0;ind_ord];
x = [0:N_vet];
figure(1);
plot(x,list_ord);hold on;plot(x,list_ord,'*');hold off;
title('Correlação amostral linear entre as entradas candidatas e a saída');
desloc = 0.05;
for i=2:length(ind_ord),
    text(x(i),list_ord(i)+desloc,num2str(ind_ord(i)));
end
