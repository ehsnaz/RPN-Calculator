function output1 = algorithm1(u)

U = {'14+123+1+2','((3+5*1)/8)*14'}; %specify infix expressions
stack = {};
output = {};


jump = 0;
for ii=(1:length(u))
    ii = ii + jump;
    
    
    % number
    if ii > length(u)
        continue
    end
    
    [number, status] = str2num(u(ii));
    
    if status == 1
        output{end+1} = iternum(u,ii);
        jump = jump + length(output{end}) - 1;
    end
    
    
    
    
    % left paranthesis
    if u(ii) == '('
        stack{end+1} = u(ii);
        
   
    % right paranthesis    
    elseif u(ii) == ')'
        cond = 0;

%         while cond == 0
%             
%             if (stack{end} ~= '(' && isempty(stack) == 0)
%                 output{end+1} = stack{end};
%                 stack(end) = [];
%             elseif stack{end} == ')'
%                 stack(end) = [];
%             else
%                 cond = 1;
%             end
%             
%         end
        while cond == 0
            
            if (stack{end} ~= '(' && isempty(stack) == 0)
                output{end+1} = stack{end};
                stack(end) = [];
            elseif stack{end} == '('
                stack(end) = [];
                cond = 1;
            else
                cond = 1;
            end
            
        end
        
    % Operators    
    elseif ismember(u(ii),'+-*/') == 1
       
        while (isempty(stack) == 0 && operatorvalue(stack{end}) > operatorvalue(u(ii)) && u(ii) ~= '(' == 0)
            output{end+1} = stack{end};
            stack(end) = [];
            
            
        end
        
        stack{end+1} = u(ii);
        
        
            
            
    end
    

    
   
    
end

while isempty(stack) == 0
    output{end+1} = stack{end};
    stack(end) = [];
end


output1 = output;

end
