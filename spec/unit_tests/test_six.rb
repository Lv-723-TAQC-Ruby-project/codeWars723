
require "./utils/ListImpl.rb"
require 'rspec'

ListImpl::IMPL.each do |student_name, student_impl|
    student_impl = student_impl::SixImpl

    RSpec.describe student_impl do
        describe '.balance' do
           
        end
        
    end
end
