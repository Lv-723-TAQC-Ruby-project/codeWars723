require "./utils/ListImpl.rb"
require 'rspec'

ListImpl::IMPL.each do |student_name, student_impl|
    student_impl = student_impl::SixImpl
    RSpec.describe student_impl do

        describe '.balance' do
            $b="1233.00
            125 Hardware;! 24.8?;
            123 Flowers 93.5
            127 Meat 120.90
            120 Picture 34.00
            124 Gasoline 11.00
            123 Photos;! 71.4?;
            122 Picture 93.5
            132 Tyres;! 19.00,?;
            129 Stamps 13.6
            129 Fruits{} 17.6
            129 Market;! 128.00?;
            \r\n
            121 Gasoline;! 13.6?;"

            $bsol="Original Balance: 1233.00\r\n125 Hardware 24.80 Balance 1208.20\r\n123 Flowers 93.50 Balance 1114.70\r\n127 Meat 120.90 Balance 993.80\r\n120 Picture 34.00 Balance 959.80\r\n124 Gasoline 11.00 Balance 948.80\r\n123 Photos 71.40 Balance 877.40\r\n122 Picture 93.50 Balance 783.90\r\n132 Tyres 19.00 Balance 764.90\r\n129 Stamps 13.60 Balance 751.30\r\n129 Fruits 17.60 Balance 733.70\r\n129 Market 128.00 Balance 605.70\r\n121 Gasoline 13.60 Balance 592.10\r\nTotal expense  640.90\r\nAverage expense  53.41"

            it 'Should make balance checking' do
                expect(student_impl.balance($b)).to eql($bsol)
            end
            
        end
        
        describe 'Rainfall' do

            it '(mean) should return the average of rainfall for the town and strng data or data1; (variance) return the variance of rainfall for the town and strng data or data1' do

            end

        end

        describe 'Artificial Rain' do

            it 'Should return the amount of water that will be collected' do

            end
        end
    end
end
