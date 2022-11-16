# frozen_string_literal: true

require './kata/Five'
require 'prime'

module BrylAndriiFiveImpl
  class FiveImpl < Five
    # Gap in Primes
    def self.gap(g, m, n)
      (m..n).each do |i|
        next unless (2..(Math.sqrt(i).to_i)).none? { |n| (i % n).zero? }
        return [i, i + g] if (2..(Math.sqrt(i + g).to_i)).none? { |n| ((i + g) % n).zero? }
      end
      nil
    end

    # Number of trailing zeros of N!
    def self.zeros(num) end

    # Perimeter of squares in a rectangle
    def self.perimeter(num) end

    # Which x for that sum?
    def self.sum(num) end

    # Find the smallest
    def self.smallest(num) end
  end
end
