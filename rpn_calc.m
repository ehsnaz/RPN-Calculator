function value = rpn_calc(expression) %input "expression" as string
    
    rpn_exp = algorithm1(expression);
    val = algorithm2(rpn_exp);
    
    fprintf('\n');
    fprintf('\n');
    fprintf('\n');
    
    fprintf('%s ', 'In RPN notation:')
    for i=1:length(rpn_exp)
        fprintf('%s ',rpn_exp{i});
    end
    
    fprintf('\n');
    fprintf('%s ','Result of Evaluation:');
    fprintf('%s',val{end});
    
    fprintf('\n');
    fprintf('\n');
    fprintf('\n');
    
    
    value = val{end};
end