"""
    gIndGrps(m1,m2,s1,s2,n1,n2)
    
    Hedge's g for independent groups.
    
    

"""
function gIndGrps(m1, m2, s1, s2, n1, n2)
    s_within = sqrt(((n1-1) * s1^2 + (n2-1) * s2^2) / (n1+n2-2) )
    d = (m1 - m2) / s_within
    df = n1+n2 - 2
    j = 1 - (3/(df*4 - 1))
    g = j * d 
    return(g)
end