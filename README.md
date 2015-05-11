# Primes
A simple Prime number generator using the [Sieve of Eratosthenes](http://en.wikipedia.org/wiki/Sieve_of_Eratosthenes). Used as
an coding example on how to generator Prime numbers _without_ using the [Prime](http://ruby-doc.org/stdlib-2.0.0/libdoc/prime/rdoc/Prime.html)
class provided by Ruby.

## Usage
The `generate_primes` method accepts two parameters that are used to generate the
requested number of prime values.

### `generate_primes` Parameters
| Name        | Description           | Required? | Default Value |
|-------------|-----------------------------|-----|-----|
| **count** | The number of Prime numbers to be generated by the method. _Must be greater than or equal to 1._ | YES | |
| **seed** | The seed value, or the lower bound of values returned by the method. _Not required to be a prime number._ | No | 2 |

## Executing Tests
Test coverage is provided using Rspec. To run the test suite, the following command
should be executed from the project's root.

```ruby
rspec primes_spec.rb
```

### Expected Output
```bash
$ rspec primes_spec.rb
.....

Finished in 0.00205 seconds
11 examples, 0 failures
```