function result = find_positions(len,dist,de)
    demand = de;
    demand_back = de;
    s = 1;
    %pos = 1;
    i = 1;
    result = [];
    while demand ~= 0
        if find_position(1,len,dist,demand) == 0
            result = [0 0 0];
            break
        end
        pos = find_position(s,len,dist,demand);
        if pos ~= 0
            result(i) = pos;
            i = i + 1;
            demand = demand -1;
            s = pos + dist;
        else
            i = 1;
            demand = demand_back;
            s = 1;
        end 
    end
