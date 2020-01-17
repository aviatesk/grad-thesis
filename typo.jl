#=
xref: ruby-type-profiler:
```ruby
class A
    def foo
        bar = 1
        baz
    end
end
class B < A
    def baz
        2
    end
end

B.new.foo # don't error
A.new.foo # cause error
```

..., well, is this really good example ?
=#

abstract type F end
struct F1 <: F
  bar
end
struct F2 <: F
  baz
end

function foo(f::F)
  bar(f)
  baz(f)
end
bar(f::F) = 1
baz(f::F2) = 2

foo(F1(1))  # don't cause error
foo(F2(1.)) # error
