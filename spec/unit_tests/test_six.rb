require "./utils/ListImpl.rb"
require 'rspec'

ListImpl::IMPL.each do |student_name, student_impl|
  student_impl = student_impl::SixImpl

  RSpec.describe student_impl do
    describe '.balance' do

    end

    describe 'Artificial Rain' do

      it 'Should return the amount of water that will be collected' do

      end
    end
  end
end
