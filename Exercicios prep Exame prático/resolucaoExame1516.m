%% RESOLUÇÃO EXAME 2015 2016

clear all
close all
clc 

%% EX 2

%       A    B    C    D  
T = [0.84 0.10    0 0.50
     0.10 0.70    0 0.10
     0.05 0.10 0.80 0.10
     0.01 0.10 0.20 0.30];
 
i0 = [1 2 10 5]';

xA = T^8 * i0;

current_T = T;
next_T = T*T;

max_tons = i0;
A = abs(current_T - next_T);
while max(A(:)) > 1e-5
    current_T = next_T; next_T = next_T * T;
    
    possible_maxs = next_T*i0;
    max_tons(possible_maxs > max_tons) = possible_maxs(possible_maxs > max_tons);
    
    A = abs(current_T - next_T);
end
disp(max_tons);

%%%%%%%%%%%%%%%%%%%%%

counter = 0;
A = abs(current_T - next_T);
while max(A(:)) > 1e-5
    
    current_tons = current_T*i0;
    if(current_tons(4) < 2)
        break;
    end
    
    current_T = next_T; 
    next_T = next_T * T;
    A = abs(current_T - next_T);
    counter = counter + 1;
end
disp(counter)