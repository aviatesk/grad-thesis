# typo
# ----

# NOTE: abstract type is only used to express conceptual type hierarchy
abstract type T end
struct T1 <: T
    foo::Int
    bar
end
struct T2 <: T
    foo::Float64
    baz
end
function foo(t::T)
    if t.foo <= 0
        return nothing
    else
        return t.bar
    end
end

foo(T1(1, 1))
foo(T2(1., 1))
foo(T2(0., 1))

# poorly typed code
# -----------------

function sum_args()
    args = [] # BUG: initialized as Array{Any, 1}
    for arg in ARGS
        push!(args, parse(Int, arg))
    end
    return sum(args)
end

sum_args()

# metaprogramming
# ---------------

macro mytime(ex)
    quote
        elapsedtime = time_ns()
        val = $ex # BUG: should be $(esc(ex))
        elapsedtime = time_ns() - elapsedtime
        println(elapsedtime, " ns")
        val
    end
end

function push_sum(itr)
    ary = []
    @mytime for i in itr # causes "UndefVar `itr`" error
        should_double(i) && push!(ary, i)
        push!(ary, i)
    end
    return sum(ary)
end
