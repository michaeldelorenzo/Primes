# Primes
A simple Prime number generator using the [Sieve of Eratosthenes](http://en.wikipedia.org/wiki/Sieve_of_Eratosthenes). Used as
an coding example on how to generator Prime numbers _without_ using the [Prime](http://ruby-doc.org/stdlib-2.0.0/libdoc/prime/rdoc/Prime.html)
class provided by Ruby.

## Generate Prime Numbers
The `generate_primes` method accepts two parameters that are used to generate the
requested number of prime values.

### `generate_primes` Parameters
| Name        | Description           | Required? | Default Value |
|-------------|-----------------------------|-----|-----|
| **count** | The number of Prime numbers to be generated by the method. _Must be greater than or equal to 1._ | YES | |
| **seed** | The seed value, or the lower bound of values returned by the method. _Not required to be a prime number._ | No | 2 |

## Print Multiplication Table
The `print_multiplication_table` method accepts two parameters that are used to generate the
multiplication table for the specified number of prime numbers.

### `print_multiplication_table` Parameters
| Name        | Description           | Required? | Default Value |
|-------------|-----------------------------|-----|-----|
| **num_of_values** | The number of Prime numbers to be generated by the method. _Must be greater than or equal to 1._ | YES | |
| **seed** | The seed value, or the lower bound of values returned by the method. _Not required to be a prime number._ | No | 2 |

To output a multiplication table from the command line, the following command can be executed from the project's root.

### Print a Multiplication Table
```bash
ruby print_multiplication_table.rb 10
```

#### Output
```text
+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
|      Multiplication Table for 10 Primes (2 through 29).      |
+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
|    | 2  | 3  | 5   | 7   | 11  | 13  | 17  | 19  | 23  | 29  |
+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
|  2 |  4 |  6 |  10 |  14 |  22 |  26 |  34 |  38 |  46 |  58 |
|  3 |  6 |  9 |  15 |  21 |  33 |  39 |  51 |  57 |  69 |  87 |
|  5 | 10 | 15 |  25 |  35 |  55 |  65 |  85 |  95 | 115 | 145 |
|  7 | 14 | 21 |  35 |  49 |  77 |  91 | 119 | 133 | 161 | 203 |
| 11 | 22 | 33 |  55 |  77 | 121 | 143 | 187 | 209 | 253 | 319 |
| 13 | 26 | 39 |  65 |  91 | 143 | 169 | 221 | 247 | 299 | 377 |
| 17 | 34 | 51 |  85 | 119 | 187 | 221 | 289 | 323 | 391 | 493 |
| 19 | 38 | 57 |  95 | 133 | 209 | 247 | 323 | 361 | 437 | 551 |
| 23 | 46 | 69 | 115 | 161 | 253 | 299 | 391 | 437 | 529 | 667 |
| 29 | 58 | 87 | 145 | 203 | 319 | 377 | 493 | 551 | 667 | 841 |
+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
```



## Executing Tests
Test coverage is provided using Rspec. To run the test suite, the following command
should be executed from the project's root.

```ruby
rspec spec/*_spec.rb
```

### Expected Output
```bash
..............

Finished in 0.0084 seconds
14 examples, 0 failures
```

## Dependencies
Primes requires the following gems to be available:

- [rspec](rubygems.org/gems/rspec)
- [terminal-table](rubygems.org/gems/terminal-table)
