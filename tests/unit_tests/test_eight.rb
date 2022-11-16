# frozen_string_literal: true

require './utils/ListImpl'
require './kata/Eight'
require 'rspec'

ListImpl::IMPL.each do |student_name, student_impl|
  describe EightImpl do
    describe 'Keep Hydrated' do
      it 'should calculate and return age of person' do
      end
    end

    describe 'Volume' do
      it 'Should get volume of cuboid' do
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
      it 'Should count positives and sum negatives' do
      end
    end

    describe 'Convert a String to a Number' do
      it 'Should convert a string to a number' do
      end
    end

    describe 'Willson primes' do
      it 'Should check if a number is a Wilson prime' do
      end
    end

    describe 'Formatting decimal places' do
      it 'Should format a number to two decimal places' do
      end
    end

    describe 'Find numbers which are divisible by given number' do
      it 'Should find numbers which are divisible by given number' do
      end
    end
  end
end
