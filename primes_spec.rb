require './primes'

require 'rspec'
require 'prime'

describe 'Primes' do
  context 'Return 10 prime numbers' do
    let(:seed) { 3 }
    let(:count) { 10 }
    let(:expected) { ct = 0; Prime.take_while{ |p| p >= seed && ct < count} }
    let(:result) {  generate_primes(count, seed) }

    it 'should return the correct number of items' do
      result.length.should eq count
    end

    it 'should have only prime members' do
      expected.select{|item| !Prime.prime?(item)}.should be_empty
    end

    it 'should be sorted' do
      expected.length.times do |i|
        result[i].should eq expected.sort[i]
      end
    end

    it 'should return only prime numbers greater than or equal to the seed' do
      # assumes sort
      result.first.should >= seed
    end

  end

  context 'Return prime numbers when the seed is less than 0' do
    let(:seed) { -1 }
    let(:count) { 1 }
    let(:expected) { Prime.take(1) }
    let(:result) {  generate_primes(count, seed) }

    it 'should return nothing' do
      result.length.should eq expected.length
    end
  end

  context 'Fail when count is less than 1' do
    let(:seed) { 2 }
    let(:count) { 0 }
    let(:expected) { [] }
    let(:result) {  generate_primes(count, seed) }

    it 'should raise an ArgumentError' do
      expect { result }.to raise_error(ArgumentError)
    end
  end

  context 'Return prime numbers using a non-prime number as the seed' do
    let(:seed) { 4 }
    let(:count) { 1 }
    let(:expected) { ct = 0; Prime.take_while{ |p| p >= seed && ct < count} }
    let(:result) {  generate_primes(count, seed) }

    it 'should return the correct number of items' do
      result.length.should eq count
    end

    it 'should have only prime members' do
      expected.select{|item| !Prime.prime?(item)}.should be_empty
    end

    it 'should be sorted' do
      expected.length.times do |i|
        result[i].should eq expected.sort[i]
      end
    end

    it 'should return only prime numbers greater than or equal to the seed' do
      # assumes sort
      result.first.should >= seed
    end

    it 'should not return the seed value as a member of the result' do
      # assumes sort
      result.first.should_not eq seed
    end
  end
end
