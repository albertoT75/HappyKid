puts "Destroy previous Areas"
# Review.destroy_all
# Reservation.destroy_all
Game.destroy_all

games = Game.create([{name: "Sleeping - With mom and dad", description: "Help your children to find a balanced sleep, by staying in his bed during the night."},
                      {name: "Sleeping - Falling asleep alone", description: "Develop routines to make your children fall asleep alone."},
                      {name: "Sleeping - Wondering at night", description: "Prevent your children from getting up when shortly awake."},
                      {name: "Potty Training", description: "Let's keep track of the bed-accidents!"},
                      {name: "Eating - Eating Alone", description: "Let's help our children to be able to eat alone."},
                      {name: "Eating - Eating At The Table", description: "For kids who are used to get up from the table before being done with food."},
                      {name: "Dressing Up - Choosing Clothes", description: "Let's get the children used to chose their own clothes."},
                      {name: "Dressing Up - Wearing clothes", description: "Children dressing up without the help of the parents."},
                      {name: "Home work", description: "Children doing their homework without the help of the parents."}])
