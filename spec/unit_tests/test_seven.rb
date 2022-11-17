require "./utils/ListImpl.rb"
require 'rspec'

ListImpl::IMPL.each do |student_name, student_impl|
  student_impl = student_impl::SevenImpl

  RSpec.describe student_impl do

    describe 'Looking for a benefactor' do

      it 'Should calculate how much the benefactor should give to each person such that he/she will have the same amount of money' do
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
        [[3, 1, 1], 2],
        [[5, 2, 3], 3]
      ].each do |test_data, expect_result|
        it 'Should calculate all the possible positions of Vasya' do
          expect(student_impl.where_is_he(test_data)).to eq(expect_result)
        end
      end
    end
  end
end
