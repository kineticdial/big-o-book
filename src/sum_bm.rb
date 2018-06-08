require 'benchmark'
require_relative './sum.rb'

empty_list = []
small_list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
large_list =  []

(0..1_000_000).each do |n|
  large_list << n
end

Benchmark.bm do |x|
  x.report('empty') { sum(empty_list) }
  x.report('small') { sum(small_list) }
  x.report('large') { sum(large_list) }
end
