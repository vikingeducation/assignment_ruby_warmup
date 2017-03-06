def dice_outcomes(dice, num)
  outcome_chart = {
    3 => 1,
    4 => 2,
    5 => 2,
    6 => 6,
    7 => 9,
    8 => 10,
    9 => 10,
    10 => 12,
    11 => 9,
    12 => 11,
    13 => 17,
    14 => 3,
    15 => 4,
    16 => 1,
    17 => 1,
    18 => 2
  }

  outcome_chart.each {|k, v| puts "#{k}: " + "#" * v}
end

dice_outcomes(3,100)
