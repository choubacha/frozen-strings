def run(file)
  count = GC.count
  puts "\nRunning file: #{file}"
  load file
  puts "GC count: #{GC.count - count}"
end

run 'bench_frozen.rb'
run 'bench_unfrozen.rb'
