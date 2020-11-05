% Algorithm 2
function output2 = algorithm2(v)

i = 1;
%v = {'3','5','1','*','+','8','/','14','*'};
v_stack = {};
while i <= length(v)
    [number, status] = str2num(v{i});
    
    
    if status == 1
        v_stack{end+1} = v{i};
        
    elseif ismember(v{i},'+-*/') == 1
        if ismember(v{i},'+') == 1
            new = str2num(v_stack{end}) + str2num(v_stack{end-1});
        elseif ismember(v{i},'-') == 1
            new = str2num(v_stack{end}) - str2num(v_stack{end-1});
        elseif ismember(v{i},'*') == 1
            new = str2num(v_stack{end}) * str2num(v_stack{end-1});
        elseif ismember(v{i},'/') == 1
            new = str2num(v_stack{end}) / str2num(v_stack{end-1});
        end
        v_stack(end) = [];
        v_stack(end) = [];
        v_stack{end+1} = num2str(new);
        
    end
    i = i + 1; 
    
    
end


output2 = v_stack;
end
