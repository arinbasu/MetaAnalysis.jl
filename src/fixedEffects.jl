
using DataFrames, CairoMakie, GLM, HypothesisTests, Distributions

"""
    fixedEffects(y,v)
    
    Fixed Effects Meta Analysis.

"""

function fixedEffects(y,v)
    w = 1 ./ v
    m = sum(w .* y) / sum(w)
    vm = 1 / sum(w)
    sem = sqrt(vm)
    llm = m - (1.96 * sem)
    ulm = m + (1.96 * sem)
    z = m/sem
    p = ccdf(Normal(), abs(z))
    if p < 0.001
       p = 0.001
    else
        p = round(p, digits = 3)
    end
    return(m, vm, llm, ulm, p)
    
end