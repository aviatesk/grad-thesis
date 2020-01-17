# adapted from https://github.com/JuliaLang/julia/blob/a7cd97a293df20b0f05c5ad864556938d91dcdea/base/reducedim.jl#L648-L659

for (fname, _fname, op) in [(:sum,     :_sum,     :add_sum), (:prod,    :_prod,    :mul_prod),
                            (:maximum, :_maximum, :max),     (:minimum, :_minimum, :min)]
    @eval begin
        # User-facing methods with keyword arguments
        @inline ($fname)(a::AbstractArray; dims=:) = ($_fname)(a, dims)
        @inline ($fname)(f, a::AbstractArray; dims=:) = ($_fname)(f, a, dims)

        ...
    end
end
