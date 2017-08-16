def insulter
  puts "hey you, what are you looking at!?"
  yield("boring","lazy")
  puts "see you around pal"
end

insulter { |insult1, insult2| puts "no offense but you are #{insult1} and #{insult2}" }