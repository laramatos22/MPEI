function state = nextState(H, currentState)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
% given a transition matrix and the current state, this function return the
% next state 
% find the probabilities of reaching all pages starting at the current one

% get the column corresponding to currentState
probVector = H(:,currentState);

% N is the number of pages, that is, H is N x N
N = length(probVector);

% pick the next page randomly according to those probabilities
state = discrete_rnd (N, probVector);
state = state(1);

end

