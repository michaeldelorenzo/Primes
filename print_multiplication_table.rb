require './multiplication_table'

if ARGV[0].nil?
  raise ArgumentError, 'You must specify the number of prime numbers to generate.'
else
  puts print_multiplication_table(ARGV[0].to_i)
end
