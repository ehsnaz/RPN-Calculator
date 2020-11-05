
function num = iternum(expression,idx)

    [number, status] = str2num(expression(idx));

    if (status == 1 && idx < length(expression)) 
        num = strcat(expression(idx),iternum(expression,idx+1));
    elseif (status == 1 && idx == length(expression))
        num = expression(idx);
    else
        num = [];
        
    end
    
    
    
    
end