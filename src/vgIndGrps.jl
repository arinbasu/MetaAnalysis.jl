"""
    vgIndGrps(m1,m2,s1,s2,n1,n2) 
    
    Variance estimates around the Hedge's g
    
"""
function vgIndGrps(m1, m2, s1, s2, n1, n2)
    s_within = sqrt(((n1-1)* s1^2 + (n2-1)* s2^2)/ (n1+n2-2) )
    d = (m1-m2)/s_within
    vd = (n1+n2)/(n1*n2) + d^2/((n1+n2)*2)
    df = n1+n2-2
    j = 1 - (3/(df*4 - 1))
    vg = j^2 * vd 
    return(vg)
end