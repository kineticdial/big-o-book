require 'benchmark'
require_relative './first_or_nil.rb'

empty_list = []
small_list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
large_list =  []

(0..1_000_000).each do |n|
  large_list << n
end

Benchmark.bm do |x|
  x.report('empty') { first_or_nil(empty_list) }
  x.report('small') { first_or_nil(small_list) }
  x.report('large') { first_or_nil(large_list) }
end
