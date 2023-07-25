module MetaAnalysis

# Write your package code here.
export gIndGrps
export vgIndGrps
export fixedEffects
export tausq
export randEffects
export forestPlot
export isq
export metareg
export metaplot
export funnel
export convert_or_d
export convert_d_or
export r_to_d
export r_to_z
export d_to_r
export find_var_z
export turn_z2r


# Write the includes
include("converter.jl")
include("fixedEffects.jl")
include("forestPlot.jl")
include("funnelPlot.jl")
include("gIndGrps.jl")
include("hetTests.jl")
include("metaPlot.jl")
include("metaReg.jl")
include("randEffects.jl")
include("tauSquare.jl")
include("vgIndGrps.jl")

end
