function state = crawl (H, first, last)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
%random walk on the graph according to state transition matrix H
%first = initial state, last = terminal or absving state
%the sequence of states will be saved in the vector "state"
%initially, the vector contains only the initial state

state = [first];

%%keep moving from page to page
%until page "last" is reached

while(1)
    state(end+1) = nextState(H, state(end));
    if(state(end) == last)
        break; %last reached
    end
end

end

