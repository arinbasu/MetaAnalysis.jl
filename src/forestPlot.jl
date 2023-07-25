using DataFrames, CairoMakie, GLM, HypothesisTests, Distributions

"""
    forestPlot(study, y, v) 

    Forest Plot of the meta analysis.


"""
function forestPlot(study, y, v)
    w = 1 ./ v
    relw = (w ./ sum(w)) * 100
    n = collect(1:length(study))
    se = sqrt.(v)
    se1 = 1.96 .* se
    fig, ax, plt = scatter(y, n,
    markersize = Vec2f.(w),
    marker = :rect,
    color = :black
    )
    errorbars!(ax, y, n, se1, direction = :x)
    z = repeat([0], (length(study) + 2) )
    n2 = collect(0:(length(study)+1))
    lines!(ax, z, n2, linestyle = :dash)
    t = tausq(y,v)
    v1 = v .+ t
    w1 =  1 ./ v1 
    m = sum(w1 .* y) / sum(w1)
    vm = 1 / sum(w1)
    scatter!(ax, [m], [0.5], marker = :diamond, markersize = Point2f.(1 ./ vm))
    ax.title = "Forest Plot"
    ax.xlabel = "Effect Size"
    hidespines!(ax)
    ax.xgridvisible = false
    ax.ygridvisible = false
    ax.yticks = (collect(1:length(study)), [s for s in study])
    return(fig)
    end