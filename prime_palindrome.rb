# nums = *(1..1000)
# can quickly produce an array, but takes up memory. just iterate over num range!

require('prime')

primes = []
Prime.each(1000) { |prime| primes.unshift(prime.to_s) }

primes.each do |prime|
  if prime == prime.reverse
    p prime.to_i
    break
  end
end
