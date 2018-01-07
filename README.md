Comparing the magic comment for frozen string literals.

# 2.2

```
$ rvm 2.2 do ruby runner.rb

Running file: bench_frozen.rb
Rehearsal ------------------------------------------
frozen  12.160000   0.030000  12.190000 ( 12.212493)
-------------------------------- total: 12.190000sec

             user     system      total        real
frozen  12.220000   0.020000  12.240000 ( 12.267354)
GC count: 8918

Running file: bench_unfrozen.rb
Rehearsal --------------------------------------------
unfrozen  12.190000   0.020000  12.210000 ( 12.223738)
---------------------------------- total: 12.210000sec

               user     system      total        real
unfrozen  12.270000   0.020000  12.290000 ( 12.301451)
GC count: 8907
```

# 2.3

```
$ rvm 2.3 do ruby runner.rb

Running file: bench_frozen.rb
Rehearsal ------------------------------------------
frozen   5.540000   0.000000   5.540000 (  5.539556)
--------------------------------- total: 5.540000sec

             user     system      total        real
frozen   5.560000   0.010000   5.570000 (  5.566902)
GC count: 1

Running file: bench_unfrozen.rb
Rehearsal --------------------------------------------
unfrozen   7.880000   0.010000   7.890000 (  7.900737)
----------------------------------- total: 7.890000sec

               user     system      total        real
unfrozen   7.920000   0.020000   7.940000 (  7.963265)
GC count: 12363
```

# Conclusion

By including the magic comment, the interpreter is able to only allocate the `'hello world'` string
a single time. Each call to the `test` method then returns a frozen string constant. This avoids
allocating a new string each time and thus garbage collection events are avoided as well.

In ruby 2.3, this results in a 30% speed up for simple string literals.
