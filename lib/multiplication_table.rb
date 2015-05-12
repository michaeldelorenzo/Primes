require File.join(File.dirname(__FILE__), '/../lib/primes')
require 'terminal-table'

def print_multiplication_table(num_of_values, seed = 2)
  if num_of_values < 1
    raise ArgumentError, "The number of values requested #{num_of_values} must be greater than or equal to 1."
  end

  prime_nums    = generate_primes(num_of_values, seed)
  multi_results = prime_nums.map{|n| [n, prime_nums.map{|o| n*o}].flatten }

  table = Terminal::Table.new(headings: ['', prime_nums].flatten) do |tbl|
    tbl.rows = multi_results
    # some simple styling of the table; I like the values right-aligned
    for x in 0..num_of_values
      tbl.align_column(x, :right)
    end

    tbl.title = "Multiplication Table for #{num_of_values} Primes (#{prime_nums.first} through #{prime_nums.last})."
  end

  table.to_s
end