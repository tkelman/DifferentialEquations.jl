using DifferentialEquations
prob = twoDimlinearODEExample()

## Solve and plot
println("Solve and Plot")
sol =solve(prob::ODEProblem,[0,1];Δt=1//2^(4),fullSave=true,alg="Euler")

#First index is the sime, so sol.uFull[1,..] is the initial condition
#Last indices are the indexes of the variables. Since our initial condition
#Has 4 rows and two columns, sol.uFull[..,1] returns the time series for the
#first row, and sol.uFull[..,2] returns the time series for the second.
plot(sol,plottrue=true)

sol =solve(prob::ODEProblem,[0,1];Δt=1//2^(4),fullSave=true,alg="ExplicitRK")

true
