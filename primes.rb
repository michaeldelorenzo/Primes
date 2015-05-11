def generate_primes(generate_count, seed = 2)
  generated = []

  if generate_count < 1
    raise ArgumentError, "The number of primes to generate should be greater than or equal to 1. Value received was #{generate_count}."
  end

  # if a value of less than the first prime is used as the seed, do a 'fast-forward' of sorts to the lowest possible value
  if seed < 2
    #warn "The seed value specified (#{seed}) is less than the lowest possible value. It has been raised to 2."
    seed = 2
  end

  if generate_count > 0
    keep_number = lambda do |a|
      keep = true

      # sieve of eratosthenes
      [2,3,5,7].each do |i|
        if a % i == 0 && a != i
          keep = false
          break
        end
      end

      keep
    end

    a = seed
    begin
      generated << a if keep_number.call(a)
      a += 1
    end until generated.length.eql?(generate_count)
  end
  # result is always sent sorted
  generated.sort
end
