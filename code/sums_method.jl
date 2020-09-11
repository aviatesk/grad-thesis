sum(a) = sum(identity, a)
sum(a::AbstractArray; dims=:) = _sum(a, dims)
sum(a::AbstractArray{Bool}) = count(a)

sum((1, 0, 1))           # => 2
sum([1, 0, 1])           # => 2
sum(BitArray([1, 0, 1])) # => 2
