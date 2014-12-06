RM Testing instance variable, versus constant versus method definition
=============

Testing eval speeds in RubyMotion

You must run with `mode=release` for real results.

i.e. `bundle exec rake mode=release`


PS - Thanks @GantMan

## Example output

```shell
****************************************************************************************************
 Testing variables versus constants versus methods
    Benchmark 1 uses @value
    Benchmark 2 uses def value; end
    Benchmark 3 uses VALUE
    Benchmark 4 uses @value (990000 times)
    Benchmark 5 uses def value; end (990000 times)
    Benchmark 6 uses VALUE (990000 times)
****************************************************************************************************


      user     system      total        real
  0.000000   0.000000   0.000000 (  0.000026)

      user     system      total        real
  0.000000   0.000000   0.000000 (  0.000008)

      user     system      total        real
  0.000000   0.000000   0.000000 (  0.000006)

      user     system      total        real
  0.060000   0.000000   0.060000 (  0.065885)

      user     system      total        real
  0.300000   0.020000   0.320000 (  0.317287)

      user     system      total        real
  0.050000   0.000000   0.050000 (  0.048800)
```
