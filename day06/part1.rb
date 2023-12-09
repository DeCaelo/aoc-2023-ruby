# time = %w(7  15   30).map(&:to_i)
# distance = %w(9  40  200).map(&:to_i)
time = %w(53 71 78 80).map(&:to_i)
distance = %w(275 1181 1215 1524).map(&:to_i)


races = time.zip(distance)

acc = 1
races.each do |time, record_distance|
  ways = 0
  time.times do |seconds_held|
    distance = seconds_held * (time - seconds_held)
    if distance > record_distance
      ways += 1
    end
  end
  acc *= ways
end
p acc
