using DataFrames, GLM, HypothesisTests


"""
    metareg(y,x) 
    
    Metaregression of point estimate of studies on regressor variables
    
    ```
    y = df.y # where df = data frame
    x = df.x # if x is a single variable OR
    x = df.a + df.b # if more than one variable is regressed
    metareg(y,x) # returns a linear regression object
    ```


"""



## meta regression of the log risk ratio

function metareg(y,x)
    df = DataFrame("y" => y, "x" => x)
    reg = lm(@formula(y~x), df)
    return(reg)
end