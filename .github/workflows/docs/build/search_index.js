var documenterSearchIndex = {"docs":
[{"location":"#MetaAnalysis.jl","page":"Home","title":"MetaAnalysis.jl","text":"","category":"section"},{"location":"#Function-Documentation","page":"Home","title":"Function Documentation","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"gIndGrps\nvgIndGrps\nfixedEffects\ntausq\nrandEffects\nforestPlot\nisq\nmetareg\nmetaplot\nfunnel\nconvert_or_d\nconvert_d_or\nr_to_d\nr_to_z\nd_to_r\nfind_var_z\nturn_z2r\n\n","category":"page"},{"location":"#Main.MetaAnalysis.gIndGrps","page":"Home","title":"Main.MetaAnalysis.gIndGrps","text":"gIndGrps(m1,m2,s1,s2,n1,n2)\n\nHedge's g for independent groups.\n\n\n\n\n\n","category":"function"},{"location":"#Main.MetaAnalysis.vgIndGrps","page":"Home","title":"Main.MetaAnalysis.vgIndGrps","text":"vgIndGrps(m1,m2,s1,s2,n1,n2) \n\nVariance estimates around the Hedge's g\n\n\n\n\n\n","category":"function"},{"location":"#Main.MetaAnalysis.forestPlot","page":"Home","title":"Main.MetaAnalysis.forestPlot","text":"forestPlot(study, y, v) \n\nForest Plot of the meta analysis.\n\n\n\n\n\n","category":"function"},{"location":"#Main.MetaAnalysis.metaplot","page":"Home","title":"Main.MetaAnalysis.metaplot","text":"metaplot(y,v,x) \n\nMetaregression of point estimate on ONE variable \n\n```\n# not run\ny = df.y # where y is the point estimate of study in data frame df\nv = df.v # where v is the variance around the point estimate\nx = df.x # where x is a single variable\nmetaplot(y,v,x) # produces the scatterpot with linear predictor\n```\n\n\n\n\n\n","category":"function"},{"location":"#Main.MetaAnalysis.funnel","page":"Home","title":"Main.MetaAnalysis.funnel","text":"funnel(y,v)\n\nFunnel Plot.\n\n```\n# not run\ny = df.y\nv = df.v\nfunnel(y,v) # produces the funnel plot\n```\n\n\n\n\n\n","category":"function"},{"location":"#Main.MetaAnalysis.convert_or_d","page":"Home","title":"Main.MetaAnalysis.convert_or_d","text":"convert_or_d(logor, vlogor)\n\nconvert logoddsratio to d\n\n\n\n\n\n","category":"function"},{"location":"#Main.MetaAnalysis.convert_d_or","page":"Home","title":"Main.MetaAnalysis.convert_d_or","text":"convert_d_or(d,vd)\n\nConvert from d to Odds Ratio\n\n\n\n\n\n","category":"function"},{"location":"#Main.MetaAnalysis.r_to_d","page":"Home","title":"Main.MetaAnalysis.r_to_d","text":"r_to_d(r,vr)\n\nConvert from correlation coefficient to Cohen's d\n\n\n\n\n\n","category":"function"},{"location":"#Main.MetaAnalysis.d_to_r","page":"Home","title":"Main.MetaAnalysis.d_to_r","text":"d_to_r(d,vd,n1,n2)\n\nConvert from Cohen's d to correlation coefficient\n\n\n\n\n\n","category":"function"},{"location":"#Main.MetaAnalysis.find_var_z","page":"Home","title":"Main.MetaAnalysis.find_var_z","text":"find_var_z(n)\n\nFind the variance of z statistic given sample size n\n\n\n\n\n\n","category":"function"}]
}