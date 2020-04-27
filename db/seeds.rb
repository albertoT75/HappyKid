puts "Destroy previous Areas"
# Review.destroy_all
# Reservation.destroy_all
Game.destroy_all

games = Game.create([{name: "Sleeping - With mom and dad", description: "Help your children to find a balanced sleep, by staying in his bed during the night.", photo:"https://unsplash.com/photos/HSy0QXIRafg"},
                      {name: "Sleeping - Falling asleep alone", description: "Develop routines to make your children fall asleep alone.", photo:"https://unsplash.com/photos/p1bHqLjKwi4"},
                      {name: "Sleeping - Wondering at night", description: "Prevent your children from getting up when shortly awake.", photo:"https://unsplash.com/photos/iN6FWLaWqKs"},
                      {name: "Potty Training", description: "Let's keep track of the bed-accidents!", photo:"https://unsplash.com/photos/0AflAh9zYJM"},
                      {name: "Eating - Eating Alone", description: "Let's help our children to be able to eat alone.", photo:"https://unsplash.com/photos/5za6niH4qpw"},
                      {name: "Eating - Eating At The Table", description: "For kids who are used to get up from the table before being done with food.", photo:"https://unsplash.com/photos/wYOPqmtDD0w"},
                      {name: "Dressing Up - Choosing Clothes", description: "Let's get the children used to chose their own clothes.", photo:"https://unsplash.com/photos/uSJLcLpHQZI"},
                      {name: "Dressing Up - Wearing clothes", description: "Children dressing up without the help of the parents.", photo:"https://unsplash.com/photos/zXbFZlk6tA0"},
                      {name: "Home work", description: "Children doing their homework without the help of the parents.", photo:"https://unsplash.com/photos/4E1JOFK55kc"}])
