require "./utils/ListImpl.rb"
require 'rspec'

ListImpl::IMPL.each do |student_name, student_impl|
    RSpec.describe student_impl do
        describe '.count_positives_sum_negatives' do
            it 'Should count of positives & sum of negatives' do
                expect(student_impl::EightImpl.count_positives_sum_negatives([1,2])).to eql([2,0])
            end
        end
    end
end
