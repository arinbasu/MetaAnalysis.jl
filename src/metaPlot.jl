using DataFrames, CairoMakie, GLM, HypothesisTests, Distributions

"""
    metaplot(y,v,x) 
    
    Metaregression of point estimate on ONE variable 

    ```
    # not run
    y = df.y # where y is the point estimate of study in data frame df
    v = df.v # where v is the variance around the point estimate
    x = df.x # where x is a single variable
    metaplot(y,v,x) # produces the scatterpot with linear predictor
    ```
    
    
"""
function metaplot(y,v,x)
    w = 1 ./ v

    fig,ax,plt = scatter(x,y, markersize = Point2f.(w) )
    
    df = DataFrame("i" => y, "j" => x)
    pred = predict(lm(@formula(i~j), df) )
    lines!(ax, x,pred)
    ax.title = "Meta regression plot"
    ax.xlabel = "Variable" 
    ax.ylabel = "Effect Size"
    ax.xgridvisible = false
    ax.ygridvisible = false
    return(fig)

end