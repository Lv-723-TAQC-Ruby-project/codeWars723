require "./utils/ListImpl.rb"
require 'rspec'

ListImpl::IMPL.each do |student_name, student_impl|
    student_impl = student_impl::EightImpl

    RSpec.describe student_impl do
        describe '.count_positives_sum_negatives' do
            [
                [[1,2,3], [3,0]],
                [[2,-5,-6], [1,-11]],
                [[0,2,0,-5,1],[2,-5]],
                [nil,[]],
                [[],[]]
            ].each do |test_data,expect_result|
                it 'Should count of positives & sum of negatives If the input is an empty array or is null, return an empty array.' do
                    expect(student_impl.count_positives_sum_negatives(test_data)).to eql(expect_result)
                end
            end
        end
        
    end
end
