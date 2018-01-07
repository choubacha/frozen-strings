# frozen_string_literal: true

def test
  "hello world"
end

require 'benchmark'

Benchmark.bmbm do |x|
  x.report("frozen") { 100_000_000.times { test } }
end

puts "GC Collected: #{GC.count}"
