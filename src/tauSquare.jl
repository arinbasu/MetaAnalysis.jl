"""
    tausq(y,v) 
    
    Tau square estimate 


"""


# Write a function for tausq
function tausq(y,v)
    w = 1 ./ v
    q = sum(w .* y.^2) - ( (sum(w .* y))^2 / sum(w) )
    df = length(y) - 1
    c_stat = sum(w) - (sum(w.^2)/sum(w))
    tausq = (q - df) / c_stat
    return(tausq)
end