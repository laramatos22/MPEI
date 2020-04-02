function p = markov_estadoEstacionario (trans, N, init, thr)
    
    prev = init;
    current = init;
    
    for i = 1:N
        prev = current;
        current = trans*current;
    end
    
    checked = false;
    p = current;
    dim = size(current, 1);
    
    while(true)
        for i = 1:dim-1
            if ((abs(current(i,1) - prev(i,1))) < thr)
                p = current;
                checked = true;
                break;
            end
        end
        if(checked == true)
            break;
        end
        
        prev = current;
        current = trans*current;
    end
    

end



