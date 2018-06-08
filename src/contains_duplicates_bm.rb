require 'benchmark'
require_relative './contains_duplicates.rb'

empty_list = []
small_list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
large_list =  []

(0..10_000).each do |n|
  large_list << n
end

Benchmark.bm do |x|
  x.report('empty') { contains_duplicates(empty_list) }
  x.report('small') { contains_duplicates(small_list) }
  x.report('large') { contains_duplicates(large_list) }
end
