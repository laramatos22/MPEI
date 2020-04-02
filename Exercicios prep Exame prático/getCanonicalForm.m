function CF = getCanonicalForm(T, SEQ)
  CF = [];
  
  for i=1:length(SEQ)
    for k=1:length(SEQ)
      
      CF(i,k) = T(SEQ(i), SEQ(k));
    
    endfor
  
  endfor
  
  return;

endfunction

