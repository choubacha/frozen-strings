# frozen_string_literal: true

def test
  'hello world'
end

def json
  '{"hello world":null}'
end

require 'json'
require 'benchmark'

Benchmark.bm do |x|
  x.report('literal') do
    1_000_000.times do
      hash = JSON.parse(json)
      100.times { hash[test] }
    end
  end
end
