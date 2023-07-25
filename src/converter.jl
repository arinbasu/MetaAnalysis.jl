
"""
    convert_or_d(logor, vlogor)
    
    convert logoddsratio to d

"""
function convert_or_d(logor, vlogor)
    d = logor * sqrt(3) / pi
    vd = vlogor * 3 * (1/ pi^2)
    return([d, vd])
end

"""
    convert_d_or(d,vd)

    Convert from d to Odds Ratio

"""
function convert_d_or(d, vd)
    logor = d * pi * (1 / sqrt(3) )
    vlogor = vd * pi^2 * (1/3)
    return(logor, vlogor)
end

"""
    r_to_d(r,vr)

    Convert from correlation coefficient to Cohen's d

"""
function r_to_d(r, vr)
    d = r * 2 / sqrt(1 - r^2)
    vd = vr * 4 / ((1 - r^2)^3)
    return(d, vd)
end

"""
    d_to_r(d,vd,n1,n2)

    Convert from Cohen's d to correlation coefficient
"""
function d_to_r(d, vd, n1, n2)
   a = (n1 == n2 ? 4 : ( (n1 + n2)^2 / (n1 * n2) ) )
    r = d / sqrt(d^2 + a)
    vr = ( a^2 * vd ) / (d^2 + a)^3
    return([r, vr])
end

"""
    r_to_z(r)

    Convert correlation coefficient to z statistic
"""

# Write functions to convert r to z
function r_to_z(r)
    z = 0.5 * log((1 + r) / (1 - r))
    return(z)
end

"""
    find_var_z(n)

    Find the variance of z statistic given sample size n
"""
function find_var_z(n)
    return(1/(n - 3))
end

"""
    turn_z2r(z)

    Given z statistic, convert z to correlation coefficent
"""

function turn_z2r(z)
    r = ((exp(z * 2)) - 1 ) / ((exp(z * 2)) + 1)
    return(r)
end