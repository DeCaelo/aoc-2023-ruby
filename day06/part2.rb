# time = %w(71530).map(&:to_i)
# distance = %w(940200).map(&:to_i)
time = %w(53717880).map(&:to_i)
distance = %w(275118112151524).map(&:to_i)


races = time.zip(distance)
races.reduce(1) do |acc, (time, record_distance)|
  ways = 0
  time.times do |seconds_held|
    if seconds_held * (time - seconds_held) > record_distance
      ways += 1
    end
  end
  acc * ways
end => result
p result
