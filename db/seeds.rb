
20.times do 
  league = League.new(
  champion: Faker::Games::LeagueOfLegends.champion, 
  power_level: Faker::Number.within(range: 1..100), 
  origin: Faker::Games::LeagueOfLegends.location, 
  picture: "" ).save
end 