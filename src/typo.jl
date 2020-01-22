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

abstract type Foo end
struct F1 <: Foo
  bar
end
struct F2 <: Foo
  baz # typo
end
bar(foo::Foo) = foo.bar

bar(F1(1)) # no error
bar(F2(1)) # error because of undefined field `bar`
