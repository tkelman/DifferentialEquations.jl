#!/usr/bin/env julia

const CPU_FLOPS = peakflops()

#Start Test Script
using DifferentialEquations, Plots
using Base.Test

# Run tests

tic()
#ODE
println("Linear ODE Tests")
@time @test include("twoDimLinearODE.jl")
println("ODE Convergence Tests")
@time @test include("odeConvergenceTests.jl")
println("ODE Adaptive Tests")
@time @test include("odeAdaptiveTests.jl")
println("ODE Lorenz Attractor")
@time @test include("odeLorenzAttractor.jl")

#SDE
println("Linear SDE Tests")
@time @test include("linearSDETests.jl")
@time @test include("twoDimLinearSDE.jl")
println("SDE Convergence Tests")
@time @test include("sdeConvergenceTests.jl")
println("Rossler Order Tests")
@time @test include("RosslerOrderTest.jl")

#Adaptive SDE
#No adaptivity until publication

#Finite Element
println("Finite Element Heat Dt Tests")
@time @test include("femHeatDtTests.jl")
println("Finite Element Heat Dx Tests")
@time @test include("femHeatDXtests.jl")
println("Finite Element Heat Method Tests")
@time @test include("femHeatMethodTest.jl")
println("Finite Element Nonlinear Heat Methods Tests")
@time @test include("femHeatNonlinearMethodsTest.jl")
println("Finite Element Nonlinear System Heat Tests")
@time @test include("femHeatSystemTest.jl")
println("Finite Element Poisson Convergence Test")
@time @test include("femPoissonConvTest.jl")
println("Finite Element Nonlinear Poisson Tests")
@time @test include("femPoissonNonlinearTest.jl")
println("Finite Element Nonlinear System Poisson Tests")
@time @test include("femPoissonNonlinearSystemTest.jl")
println("Finite Element Stochastic Poisson")
@time @test include("femStochasticPoissonSolo.jl")
println("Finite Element Poisson")
@time @test include("introductionExample.jl")
println("Heat Animation Test")
@time @test include("femHeatAnimationTest.jl")
println("Stochastic Heat Animation Test")
@time @test include("femStochasticHeatAnimationTest.jl")
println("Example Mesh Tests")
@time @test include("exampleMeshTests.jl")
println("Simple Mesh Tests")
@time @test include("simpleMeshTests.jl")

#FDM
##Stokes
println("Stokes Tests")
@time @test include("fdmStokesTests.jl")
println("DGS Internals Test")
@time @test include("dgsTest.jl")

#Internals
println("Meshgrid Tests")
@time @test include("meshgridTests.jl")
println("Quadrature Points Tests")
@time @test include("quadptsTest.jl")
println("Number of Parameters Calc Tests")
@time @test include("numParametersTest.jl")
println("Assembly Tests")
@time @test include("assemblyTests.jl")
println("Boundary Tests")
@time @test include("boundaryTests.jl")
toc()
