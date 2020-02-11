%Plots the value produced by sqrtNtimes for a given input
%and a given max number of iterations. 
function []=plotSqrtNtimes(x,Nmax)

valueSqrtNtimes=zeros(Nmax);
for j=1:Nmax
    valueSqrtNtimes(j)=sqrtNtimes(x,j);
end

iteration=1:Nmax;
figure();
plot(iteration,x*ones(Nmax),'r.');
hold on; 
plot(iteration,valueSqrtNtimes(1:Nmax),'b');
%defines manual range for scaling
xlim([0,1.2*Nmax]); 
ylim([0,1.2*x]);
xlabel('Iteration');
ylabel('Recovered value');
title('Plotting Recovered Value of SqrtNtimes');
legend('original value', 'recovered value');
hold off;
end