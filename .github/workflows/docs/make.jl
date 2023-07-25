push!(LOAD_PATH,"../src/")
include("../../../src/MetaAnalysis.jl")
using .MetaAnalysis
using Documenter
makedocs(
         sitename = "MetaAnalysis.jl",
         modules  = [MetaAnalysis],
         pages=[
                "Home" => "index.md"
               ])
deploydocs(;
    repo="github.com/arinbasu/MetaAnalysis.jl",
)