require File.join(File.dirname(__FILE__), '/../lib/multiplication_table')
require 'rspec'

describe 'Multiplication Table' do
  context 'Return a multiplication table' do
    let(:seed) { 2 }
    let(:count) { 10 }
    let(:expected) { %Q(+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
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
+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+) }
    let(:result) {  print_multiplication_table(count, seed) }

    it 'should return a string of some length' do
      result.should_not be_empty
    end

    it 'should return a multiplication table string' do
      result.should eq expected
    end

  end

  context 'Fail when count is less than 1' do
    let(:seed) { 2 }
    let(:count) { 0 }
    let(:result) {  print_multiplication_table(count, seed) }

    it 'should raise an ArgumentError' do
      expect { result }.to raise_error(ArgumentError)
    end
  end
end
