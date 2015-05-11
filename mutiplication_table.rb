require './primes'
require 'terminal-table'

def print_multiplication_tbl(num_of_values)
  prime_nums    = generate_primes(num_of_values, 2)
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

# puts print_multiplication_tbl(10)