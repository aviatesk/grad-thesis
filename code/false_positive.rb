def foo(n)
  if n < 10
    return n
  else
    return "over 10"
  end
end

def bar(n)
  if n < 10
    return foo(n) + 1
  else
    return foo(n) + "+1"
  end
end

bar(1) # here ruby-type-profiler ends up reporting false positive errors
