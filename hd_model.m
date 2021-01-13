%Conflict and cooperation among individuals and populations
%Hawk-Dove game theory - replicator dynamics mmodel

%Returns dxdt for a 1D replicator model with hawk-dove parameters
%In the matrix pars.A, par.G and pars.C denote gain and cost

function dxdt = hd_model(t,x,pars)

r1 =x*pars.A(1,1)+(1-x)*pars.A(1,2);
r2 =x*pars.A(2,1)+(1-x)*pars.A(2,2);
r_avg = r1*x+r2*(1-x);
dxdt = r1*x-r_avg*x;
end