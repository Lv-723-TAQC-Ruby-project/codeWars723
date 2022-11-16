require "./utils/ListImpl.rb"
require 'rspec'

ListImpl::IMPL.each do |student_name, student_impl|
  student_impl = student_impl::FiveImpl

  RSpec.describe student_impl do
    describe 'Gap in Primes' do

      it 'Should find the first pair of two prime numbers spaced with a gap of g between the limits m, n if these numbers exist otherwise nil' do
      end
    end

    describe 'Trailing zeros in factorial' do

      it 'Should calculate the number of trailing zeros of n!' do
      end
    end

    describe 'Perimeter of squares in a rectangle' do

      it 'Should calculate the perimeter of the squares in a rectangle when there are n + 1 squares side by side' do
      end
    end

    describe 'Which x for that sum?' do

      it 'Should find all values of x for which the given function is an integer' do
      end
    end

    describe 'Find the smallest' do

      it 'Should find the smallest integer n such that n^2 is greater than a given integer p' do
      end
    end
  end
end