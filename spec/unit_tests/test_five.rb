require "./utils/ListImpl.rb"
require 'rspec'

ListImpl::IMPL.each do |student_name, student_impl|
  student_impl = student_impl::FiveImpl

  RSpec.describe student_impl do
    describe 'Gap in Primes' do
      [
        [[2,100,110], [101, 103]],
        [[4,100,110], [103, 107]],
        [[6,100,110], nil],
        [[8,300,400], [359, 367]],
        [[10,300,400], [337, 347]],
      ].each do |test_data, expect_result|
      it 'Should find the first pair of two prime numbers spaced with a gap of g between the limits m, n if these numbers exist otherwise nil' do
        expect(student_impl.gap(test_data)).to eq(expect_result)
        end
      end
    end

    describe 'Trailing zeros in factorial' do
      [
        [0, 0],
        [6, 1],
        [30, 7]
      ].each do |test_data, expect_result|
        it 'Should find the number of trailing zeros in a factorial of a given number' do
          expect(student_impl.zeros(test_data)).to eq(expect_result)
        end
      end
    end

    describe 'Perimeter of squares in a rectangle' do

      it 'Should calculate the perimeter of the squares in a rectangle when there are n + 1 squares side by side' do
      end
    end

    describe 'Which x for that sum?' do
      [
        [2.00, 5.000000000000e-01],
        [4.00, 6.096117967978e-01],
        [5.00, 6.417424305044e-01]
      ].each do |test_data, expect_result|
        it 'Should find all values of x for which the given function is an integer' do
          expect(student_impl.zeros(test_data)).to eq(expect_result)
          #not finished
        end
      end
    end

    describe 'Find the smallest' do
      it 'Should find the smallest integer n such that n^2 is greater than a given integer p' do

      end
    end
  end
end
