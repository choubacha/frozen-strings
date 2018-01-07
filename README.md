Comparing the magic comment for frozen string literals.

# 2.2

```
$ rvm 2.2 do ruby bench_unfrozen.rb
Rehearsal --------------------------------------------
unfrozen  12.030000   0.010000  12.040000 ( 12.055721)
---------------------------------- total: 12.040000sec

               user     system      total        real
unfrozen  12.350000   0.040000  12.390000 ( 12.434650)
kchoubacha@WM-MAC-KCHOUBACHA:frozen-strings => 0
$ rvm 2.2 do ruby bench_frozen.rb
Rehearsal ------------------------------------------
frozen  11.960000   0.010000  11.970000 ( 11.978359)
-------------------------------- total: 11.970000sec

             user     system      total        real
frozen  12.060000   0.030000  12.090000 ( 12.109145)
```

# 2.3

```
kchoubacha@WM-MAC-KCHOUBACHA:frozen-strings => 0
$ rvm 2.3 do ruby bench_unfrozen.rb
Rehearsal --------------------------------------------
unfrozen   7.840000   0.020000   7.860000 (  7.887877)
----------------------------------- total: 7.860000sec

               user     system      total        real
unfrozen   8.330000   0.020000   8.350000 (  8.350571)
kchoubacha@WM-MAC-KCHOUBACHA:frozen-strings => 0
$ rvm 2.3 do ruby bench_frozen.rb
Rehearsal ------------------------------------------
frozen   5.620000   0.020000   5.640000 (  5.648740)
--------------------------------- total: 5.640000sec

             user     system      total        real
frozen   5.620000   0.000000   5.620000 (  5.628493)
```
