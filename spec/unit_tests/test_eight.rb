require "./utils/ListImpl.rb"
require 'rspec'

ListImpl::IMPL.each do |student_name, student_impl|
  student_impl = student_impl::EightImpl

  RSpec.describe student_impl do

    describe 'Keep Hydrated' do
      [
        [2, 1],
        [1.4, 0],
        [12.3, 6],
        [0.82, 0],
        [11.8, 5],
        [1787, 893],
        [0, 0]
      ].each do |test_data, expect_result|
        it 'Should return the number of litres rounded to the smallest number' do
          expect(student_impl.litres(test_data)).to eq(expect_result)
        end
      end
    end

    describe 'Volume of a Cuboid' do
      [
        [2, 3, 4, 24],
        [4, 6, 8, 192],
        [7, 14, 26, 2548],
      ].each do |test_data, expect_result|
      it 'Should get volume of cuboid' do
        expect(student_impl.get_volume_of_cuboid(test_data)).to eq(expect_result)
        end
      end
    end

    describe 'Miles per gallon to kilometers per liter' do

      it 'Should convert miles per gallon to kilometers per liter' do
      end
    end

    describe 'To square root or no to square' do

      it 'Should square root or square' do
      end
    end

    describe 'Count of positives / sum of negatives' do
      [
        [[1, 2, 3], [3, 0]],
        [[2, -5, -6], [1, -11]],
        [[0, 2, 0, -5, 1], [2, -5]],
        [nil, []],
        [[], []]
      ].each do |test_data, expect_result|
        it 'Should count of positives & sum of negatives If the input is an empty array or is null, return an empty array.' do
          expect(student_impl.count_positives_sum_negatives(test_data)).to eql(expect_result)
        end
      end
    end

    describe 'Convert a String to a Number' do

      it 'Should convert a string to a number' do
      end
    end

    describe 'Willson primes' do
      [
        [5, true ],
        [13, true ],
        [563, true],
        [45, false],
        [-89, false]
      ].each do |test_data, expect_result|
      it 'Should check if a number is a Wilson prime' do
        expect(student_impl.am_I_Wilson(test_data).to eql(expect_result))
      end
      end
    end

    describe 'Formatting decimal places' do

      it 'Should format a number to two decimal places' do
      end
    end

    describe 'Find numbers which are divisible by given number' do
      [
        [[1, 2, 3, 4, 5, 6], 2, [2, 4, 6]],
        [[1, 2, 3, 4, 5, 6], 3, [3, 6]],
        [[0, 1, 2, 3, 4, 5, 6], 4, [0, 4]],
        [[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 1, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]],
        [[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 17, [0]]
      ].each do |arr, num, result|
        it 'Should find numbers which are divisible by given number' do
          expect(student_impl.divisible_by(arr, num)).to eq result
        end
      end
    end
  end
end

