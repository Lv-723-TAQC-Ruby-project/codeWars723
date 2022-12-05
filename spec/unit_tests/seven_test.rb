require "./utils/ListImpl.rb"
require 'rspec'

ListImpl::IMPL.each do |student_name, student_impl|
  student_impl = student_impl::SevenImpl

  RSpec.describe student_impl do

    describe 'Looking for a benefactor' do
      [
        [[14, 30, 5, 7, 9, 11, 16], 90, 628],
        [[14, 30, 5, 7, 9, 11, 15], 92, 645]
      ].each do |arr, newavg, expect_result|
        it 'Should calculate how much the benefactor should give to each person such that he/she will have the same amount of money' do
          expect(student_impl.new_avg(arr, newavg)).to eq(expect_result)
        end
      end
    end

    describe 'Looking For a ArgumentError' do
      [
        [[14, 30, 5, 7, 9, 11, 15], 2]
      ].each do |test_data, expect_result|
        it 'Should return an ArgumentError' do
          expect{student_impl.new_avg(test_data, expect_result)}.to raise_error(ArgumentError)
        end
      end
    end

    describe 'Sum of the first nth term of Series' do
      [
        [1, "1.00"],
        [2, "1.25"],
        [3, "1.39"],
      ].each do |number, expect_result|
        it 'Should calculate the sum of the first n terms of the series' do
          expect(student_impl.series_sum(number)).to eq(expect_result)
        end
      end
    end

    describe 'Where is Vasya?' do
      [
        [3, 1, 1, 2],
        [5, 2, 3, 3]
      ].each do |test_data1, test_data2, test_data3, expect_result|
        it 'Should calculate all the possible positions of Vasya' do
          expect(student_impl.where_is_he(test_data1, test_data2, test_data3)).to eq(expect_result)
        end
      end
    end
  end
end
