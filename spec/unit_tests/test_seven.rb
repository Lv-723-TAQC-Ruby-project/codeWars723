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

      it 'Should calculate the sum of the first n terms of the series' do
      end
    end

    describe 'Where is Vasya?' do

      it 'Should calculate all the possible positions of Vasya' do
      end
    end
  end
end
