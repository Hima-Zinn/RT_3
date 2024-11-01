require 'benchmark'

STRING_HASH = { 'foo' => 'bar' }
SYMBOL_HASH = { foo: 'bar' }
NUMBER_HASH = { 100 => 'bar' }
str = 'foo'
sym = :foo
num = 100

n = 100_000_000
Benchmark.bmbm do |x|
  x.report('String') { n.times { STRING_HASH[str] } }
  x.report('Symbol') { n.times { SYMBOL_HASH[sym] } }
  x.report('Number') { n.times { NUMBER_HASH[num] } }
end
