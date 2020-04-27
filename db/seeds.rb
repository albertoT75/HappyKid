puts "Destroy previous Areas"
# Review.destroy_all
# Reservation.destroy_all
Game.destroy_all

games = Game.create([{name: "Sleeping - With mom and dad", description: "Help your children to find a balanced sleep, by staying in his bed during the night."},
                      {name: "Sleeping - Falling asleep alone", description: "Develop routines to make your children fall asleep alone."},
                      {name: "Sleeping - Wondering at night", description: "Prevent your children from getting up when shortly awake."),
                      {name: "Potty Training", description: "Let's keep track of the bed-accidents!"}])
