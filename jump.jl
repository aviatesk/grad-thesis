using JuMP
using GLPK

model = Model(with_optimizer(GLPK.Optimizer))

@variable(model, 0 <= x <= 2) # x will automatically be defined
@variable(model, 0 <= y <= 30) # y will automatically be defined

@objective(model, Max, 5x + 3y)
@constraint(model, x + 5y <= 3)

optimize!(model)
@show objective_value(model)
@show value(x)
@show value(y)
