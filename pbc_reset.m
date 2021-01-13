%Conflict and cooperation among individuals and populations
%This function implements periodic boundary conditions. It returns a
%position that wraps around the 2D space in a torus-like sense

function new_pos = pbc_reset(opp_pos, L)
new_pos = opp_pos;
for i =1:2
    if opp_pos(i) > L
        new_pos(i)=opp_pos(i)-L;
    elseif opp_pos(i)==0
        new_pos(i)= opp_pos(i)+L;
    end
end

