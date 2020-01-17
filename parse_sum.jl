function parse_sum(args)
  ints = []
  for arg in args
    push!(ints, parse(Int, arg))
  end
  return sum(ints)
end

parse_sum(ARGS) # error when empty
