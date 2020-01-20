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

... well, is this really good example ?
=#

abstract type T end
struct A <: T end
struct B <: T end

function foo(t::T)
  bar = 1
  baz(t)
end
baz(t::B) = 2

foo(B()) # don't cause error
foo(A()) # error since there is not method for bar(f::A)
