require_relative 'ruby_problems'

describe "#roll_dice" do
  it "rolls a single die" do
    10.times do
      expect(roll_dice).to be_between(1,6)
    end
  end

  it "rolls multiple dice" do
    10.times do
      expect(roll_dice(2)).to be_between(1,12)
    end
  end
end

describe "#dice_outcomes" do
  it "displays how many times each possible number could appear" do

    def roll_die
      3
    end

    output = <<-EOF
1: 0
2: 0
3: 10
4: 0
5: 0
6: 0
EOF
    expect(dice_outcomes(1,10)).to eq output
  end
end

describe '#fibonacci' do
  it 'returns the fibonacci sequence up to a given position' do
    expect(fibonacci(7)).to eq [1, 1, 2, 3, 5, 8, 13]
  end
end

describe '#stock_picker' do
  it 'returns the most profitable array of indices' do
    expect(stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])).to eq [2,6]
  end
end

describe '#anagrams' do
  it 'returns an array of anagrams from a specified string' do
    output = ["APERS","APRES","ASPER","PARES","PARSE","PRASE","PRESA","RAPES","REAPS","SPARE","SPEAR"]
    expect(anagrams("pears")).to eq output
  end
end


