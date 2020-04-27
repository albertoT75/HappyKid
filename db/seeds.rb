puts "Destroy previous Areas"
# Review.destroy_all
# Reservation.destroy_all
Game.destroy_all

games = Game.create([{name: "Sleeping", description: "Help your children to find a balanced sleep, by staying in his bed during the night", areas: "Going to Mon&Dad's bed at night"},
                      {name: "Sleeping", description: "Help your children to find a balanced sleep, by staying in his bed during the night", areas: "Falling asleep alone"},
                       {name: "Sleeping", description: "Help your children to find a balanced sleep, by staying in his bed during the night", areas: "Wondering at night"} ])
