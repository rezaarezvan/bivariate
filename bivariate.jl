#=



Z = [pdf(mvnorm,[i,j]) for i in 0:100, j in 0:100]
plot(0:100,0:100,Z,st=:surface)
=#
using Distributions
using StatsPlots
mvnorm = fit(MvNormal, [rand(0.0:100.0, 100) rand(0.0:100.0, 100)]')

x = 0:100
y = 0:100 # because x and y are of different lengths
z = [pdf(mvnorm, [i, j]) for i in x, j in y]

pyplot()

plot(x, y, z, linetype=:surface, legend=false, color=:blues)
plot!(x, y, z, linetype=:wireframe, legend=false, color=:black, width=0.1)
