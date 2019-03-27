function x = lag_bar(nr, y,vals)
    format long;

    
    su = 0;
    for i = 1:size(vals,2)
        pro = 1;
        for j = 1:size(vals, 2)
            if i ~= j
                pro = pro * (nr - y(j)) / (y(i) - y(j));
            end
            
        end
        
        su = su + pro * vals(i);
    end
    
    
    x = su;
end