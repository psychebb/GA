function pos=find_position(s,e,dist,demand)
    len=e-s+1;
    must = dist*demand;
    if(len-must+dist<0)
        pos = 0
    else
        limit = len - dist * demand + dist;
        pos = randint(1,1,[s,s+limit-1])
    end
    pos