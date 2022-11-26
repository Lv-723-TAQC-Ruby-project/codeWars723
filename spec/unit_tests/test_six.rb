require "./utils/ListImpl.rb"
require 'rspec'

ListImpl::IMPL.each do |student_name, student_impl|
  student_impl = student_impl::SixImpl
  RSpec.describe student_impl do

    describe '.balance' do
      $b = "1233.00
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

      $bsol = "Original Balance: 1233.00\r\n125 Hardware 24.80 Balance 1208.20\r\n123 Flowers 93.50 Balance 1114.70\r\n127 Meat 120.90 Balance 993.80\r\n120 Picture 34.00 Balance 959.80\r\n124 Gasoline 11.00 Balance 948.80\r\n123 Photos 71.40 Balance 877.40\r\n122 Picture 93.50 Balance 783.90\r\n132 Tyres 19.00 Balance 764.90\r\n129 Stamps 13.60 Balance 751.30\r\n129 Fruits 17.60 Balance 733.70\r\n129 Market 128.00 Balance 605.70\r\n121 Gasoline 13.60 Balance 592.10\r\nTotal expense  640.90\r\nAverage expense  53.41"

      it 'Should make balance checking' do
        expect(student_impl.balance($b)).to eql($bsol)
      end

    end

    describe 'Ranking NBA' do
      r = "Los Angeles Clippers 104 Dallas Mavericks 88,New York Knicks 101 Atlanta Hawks 112,Indiana Pacers 103 Memphis Grizzlies 112,"\
     "Los Angeles Lakers 111 Minnesota Timberwolves 112,Phoenix Suns 95 Dallas Mavericks 111,Portland Trail Blazers 112 New Orleans Pelicans 94,"\
     "Sacramento Kings 104 Los Angeles Clippers 111,Houston Rockets 85 Denver Nuggets 105,Memphis Grizzlies 76 Cleveland Cavaliers 106,"\
     "Milwaukee Bucks 97 New York Knicks 122,Oklahoma City Thunder 112 San Antonio Spurs 106,Boston Celtics 112 Philadelphia 76ers 95,"\
     "Brooklyn Nets 100 Chicago Bulls 115,Detroit Pistons 92 Utah Jazz 87,Miami Heat 104 Charlotte Hornets 94,"\
     "Toronto Raptors 106 Indiana Pacers 99,Orlando Magic 87 Washington Wizards 88,Golden State Warriors 111 New Orleans Pelicans 95,"\
     "Atlanta Hawks 94 Detroit Pistons 106,Chicago Bulls 97 Cleveland Cavaliers 95,"\
     "San Antonio Spurs 111 Houston Rockets 86,Chicago Bulls 103 Dallas Mavericks 102,Minnesota Timberwolves 112 Milwaukee Bucks 108,"\
     "New Orleans Pelicans 93 Miami Heat 90,Boston Celtics 81 Philadelphia 76ers 65,Detroit Pistons 115 Atlanta Hawks 87,"\
     "Toronto Raptors 92 Washington Wizards 82,Orlando Magic 86 Memphis Grizzlies 76,Los Angeles Clippers 115 Portland Trail Blazers 109,"\
     "Los Angeles Lakers 97 Golden State Warriors 136,Utah Jazz 98 Denver Nuggets 78,Boston Celtics 99 New York Knicks 85,"\
     "Indiana Pacers 98 Charlotte Hornets 86,Dallas Mavericks 87 Phoenix Suns 99,Atlanta Hawks 81 Memphis Grizzlies 82,"\
     "Miami Heat 110 Washington Wizards 105,Detroit Pistons 94 Charlotte Hornets 99,Orlando Magic 110 New Orleans Pelicans 107,"\
     "Los Angeles Clippers 130 Golden State Warriors 95,Utah Jazz 102 Oklahoma City Thunder 113,San Antonio Spurs 84 Phoenix Suns 104,"\
     "Chicago Bulls 103 Indiana Pacers 94,Milwaukee Bucks 106 Minnesota Timberwolves 88,Los Angeles Lakers 104 Portland Trail Blazers 102,"\
     "Houston Rockets 120 New Orleans Pelicans 100,Boston Celtics 111 Brooklyn Nets 105,Charlotte Hornets 94 Chicago Bulls 86,"\
     "Cleveland Cavaliers 103 Dallas Mavericks 97"

      teams = "Los Angeles Clippers,Dallas Mavericks,New York Knicks,NYK,Atlanta Hawks,Indiana Pacers,Memphis Grizzlies,"\
         "Los Angeles Lakers,Minnesota Timberwolves,Phoenix Suns,Portland Trail Blazers,New Orleans Pelicans,"\
         "Sacramento Kings,Los Angeles Clippers,Houston Rockets,Denver Nuggets,Cleveland Cavaliers,Milwaukee Bucks,"\
         "Oklahoma City Thunder, San Antonio Spurs,Boston Celtics,Philadelphia 76ers,Brooklyn Nets,Chicago Bulls,"\
         "Detroit Pistons,Utah Jazz,Miami Heat,Charlotte Hornets,Toronto Raptors,Orlando Magic,Washington Wizards,"\
         "Golden State Warriors,Dallas Maver"
      it 'should return team name,wins,losses,draws,scores,points,conceded points' do
        expect(student_impl.nba_cup(r, "Boston Celtics")).to eql("Boston Celtics:W=4;D=0;L=0;Scored=403;Conceded=350;Points=12")
        expect(student_impl.nba_cup(r, "Boston Celt")).to eql("Boston Celt:This team didn't play!")
        expect(student_impl.nba_cup(r, "Charlotte Hornets")).to eql("Charlotte Hornets:W=2;D=0;L=2;Scored=373;Conceded=382;Points=6")
      end
    end

    describe 'Rainfall' do
      data = "Rome:Jan 81.2,Feb 63.2,Mar 70.3,Apr 55.7,May 53.0,Jun 36.4,Jul 17.5,Aug 27.5,Sep 60.9,Oct 117.7,Nov 111.0,Dec 97.9" + "\n" +
        "London:Jan 48.0,Feb 38.9,Mar 39.9,Apr 42.2,May 47.3,Jun 52.1,Jul 59.5,Aug 57.2,Sep 55.4,Oct 62.0,Nov 59.0,Dec 52.9" + "\n" +
        "Paris:Jan 182.3,Feb 120.6,Mar 158.1,Apr 204.9,May 323.1,Jun 300.5,Jul 236.8,Aug 192.9,Sep 66.3,Oct 63.3,Nov 83.2,Dec 154.7" + "\n" +
        "NY:Jan 108.7,Feb 101.8,Mar 131.9,Apr 93.5,May 98.8,Jun 93.6,Jul 102.2,Aug 131.8,Sep 92.0,Oct 82.3,Nov 107.8,Dec 94.2" + "\n" +
        "Vancouver:Jan 145.7,Feb 121.4,Mar 102.3,Apr 69.2,May 55.8,Jun 47.1,Jul 31.3,Aug 37.0,Sep 59.6,Oct 116.3,Nov 154.6,Dec 171.5" + "\n" +
        "Sydney:Jan 103.4,Feb 111.0,Mar 131.3,Apr 129.7,May 123.0,Jun 129.2,Jul 102.8,Aug 80.3,Sep 69.3,Oct 82.6,Nov 81.4,Dec 78.2" + "\n" +
        "Bangkok:Jan 10.6,Feb 28.2,Mar 30.7,Apr 71.8,May 189.4,Jun 151.7,Jul 158.2,Aug 187.0,Sep 319.9,Oct 230.8,Nov 57.3,Dec 9.4" + "\n" +
        "Tokyo:Jan 49.9,Feb 71.5,Mar 106.4,Apr 129.2,May 144.0,Jun 176.0,Jul 135.6,Aug 148.5,Sep 216.4,Oct 194.1,Nov 95.6,Dec 54.4" + "\n" +
        "Beijing:Jan 3.9,Feb 4.7,Mar 8.2,Apr 18.4,May 33.0,Jun 78.1,Jul 224.3,Aug 170.0,Sep 58.4,Oct 18.0,Nov 9.3,Dec 2.7" + "\n" +
        "Lima:Jan 1.2,Feb 0.9,Mar 0.7,Apr 0.4,May 0.6,Jun 1.8,Jul 4.4,Aug 3.1,Sep 3.3,Oct 1.7,Nov 0.5,Dec 0.7"
      towns = %w[Rome London Paris NY Vancouver Sydney Bangkok Tokyo Beijing Lima Montevideo Caracas Madrid Berlin]

      it '(mean) should return the average of rainfall for the town and strng data or data1; (variance) return the variance of rainfall for the town and strng data or data1' do
        expect(student_impl.mean("London", data)).to eql 51.199999999999996
        expect(student_impl.mean("Beijing", data)).to eql 52.416666666666664
        expect(student_impl.variance("London", data)).to eql 57.42833333333374
        expect(student_impl.variance("Beijing", data)).to eql 4808.37138888889
      end

    end

    describe 'Help the bookseller' do
      [
        [["ABAR 200", "CDXE 500", "BKWR 250", "BTSQ 890", "DRTY 600"], %w[A B], '(A : 200) - (B : 1140)'],
        [["BBAR 150", "CDXE 515", "BKWR 250", "BTSQ 890", "DRTY 600"], %w[A B C D], '(A : 0) - (B : 1290) - (C : 515) - (D : 600)'],
        [["CBART 20", "CDXEF 50", "BKWRK 25", "BTSQZ 89", "DRTYM 60"], %w[A B C W], '(A : 0) - (B : 114) - (C : 70) - (W : 0)'],
        [["ROXANNE 102", "RHODODE 123", "BKWRKAA 125", "BTSQZFG 239", "DRTYMKH 060"], %w[B R D X], '(B : 364) - (R : 225) - (D : 60) - (X : 0)'],
        [[], %w[A B], '']
      ].each do |list_of_art, list_of_cat, result|
        it 'Should return the string with the categories and the sum of the unique book of category' do
          expect(student_impl.stockList(list_of_art, list_of_cat)).to eq result
        end
      end

    end

    describe 'Artificial Rain' do
      [
        [[2], 1],
        [[1, 2, 1, 2], 3],
        [[4, 2, 3, 3, 2], 4]
      ].each do |test_data, expect_result|
        it 'Should return the number of days needed to get the artificial rain' do
          expect(student_impl.artificial_rain(test_data)).to eq expect_result
        end
      end

      it 'Should return the amount of water that will be collected' do

      end
    end

    describe 'Floating-point Approximation' do
      [
        [[2], 1],
        [[1, 2, 1, 2, 1], 3],
        [[4, 2, 3, 3, 2], 4]
      ].each do |test_data, expected_result|
        it 'Should return digits with floating-point approximation ' do
          expect(student_impl.f(test_data)).to eql(expected_result)
        end
      end

    end

    describe 'Build a pile of Cubes' do
      [
        [4183059834009, 2022],
        [24723578342962, -1],
        [135440716410000, 4824],
        [40539911473216, 3568]
      ].each do |test_data, expect_result|
        it 'Should the building a pile of Cubes' do
          expect(student_impl.find_nb(test_data)).to eq(expect_result)
        end
      end
    end

  end
end
