puts "Destroy previous Areas"
Comment.destroy_all
Reservation.destroy_all
Game.destroy_all

games = Game.create([{name: "Sleeping - With mom and dad", description: "Help your children to find a balanced sleep, by staying in his bed during the night.", photo:"https://unsplash.com/photos/HSy0QXIRafg"},
                      {name: "Sleeping - Falling asleep alone", description: "Develop routines to make your children fall asleep alone.", photo:"https://unsplash.com/photos/p1bHqLjKwi4"},
                      {name: "Sleeping - Wondering at night", description: "Prevent your children from getting up when shortly awake.", photo:"https://unsplash.com/photos/iN6FWLaWqKs"},
                      {name: "Potty Training", description: "Let's keep track of the bed-accidents!", photo:"https://unsplash.com/photos/0AflAh9zYJM"},
                      {name: "Eating - Alone", description: "Let's help our children to be able to eat alone.", photo:"https://unsplash.com/photos/5za6niH4qpw"},
                      {name: "Eating - At the table", description: "For kids who are used to get up from the table before being done with food.", photo:"https://unsplash.com/photos/wYOPqmtDD0w"},
                      {name: "Eating - Veggies", description: "For kids who are not accustomed to eat veggies.", photo:"https://unsplash.com/photos/wYOPqmtDD0w"},
                      {name: "Dressing Up - Choosing clothes", description: "Let's get the children used to chose their own clothes.", photo:"https://unsplash.com/photos/uSJLcLpHQZI"},
                      {name: "Dressing Up - Alone", description: "Children dressing up without the help of the parents.", photo:"https://unsplash.com/photos/zXbFZlk6tA0"},
                      {name: "Dressing Up - With given clothes", description: "Children dressing up with the clothes given by the parents.", photo:"https://unsplash.com/photos/zXbFZlk6tA0"},
                      {name: "Naptime", description: "When it is complicated to make them nap home.", photo:"https://unsplash.com/photos/wYOPqmtDD0w"},
                      {name: "Siblings - Arguing", description: "Preventing sibling from arguing all the time.", photo:"https://unsplash.com/photos/wYOPqmtDD0w"},
                      {name: "Siblings - Bullying", description: "Preventing sibling from bullying each other.", photo:"https://unsplash.com/photos/wYOPqmtDD0w"},
                      {name: "Siblings - Fighting", description: "Preventing sibling from fisically fighting each other.", photo:"https://unsplash.com/photos/wYOPqmtDD0w"},
                      {name: "TidingUp - Bed", description: "Let's fix those messy beds.", photo:"https://unsplash.com/photos/wYOPqmtDD0w"},
                      {name: "TidingUp - Toys", description: "Let's keep some order among the toys.", photo:"https://unsplash.com/photos/wYOPqmtDD0w"},
                      {name: "TidingUp - Clothes", description: "Let's arrange the clothes nicely.", photo:"https://unsplash.com/photos/wYOPqmtDD0w"},
                      {name: "Washing - Face", description: "Let's refresh in the morning.", photo:"https://unsplash.com/photos/wYOPqmtDD0w"},
                      {name: "Washing - Hands", description: "Let's keep the germs away.", photo:"https://unsplash.com/photos/wYOPqmtDD0w"},
                      {name: "Washing - Hair", description: "The soap is not so bad!", photo:"https://unsplash.com/photos/wYOPqmtDD0w"},
                      {name: "QuietTime", description: "Because our neighbours need some peace sometime.", photo:"https://unsplash.com/photos/wYOPqmtDD0w"},
                      {name: "Tantrum", description: "Throwing a tantrum cannot be the solution.", photo:"https://unsplash.com/photos/wYOPqmtDD0w"},
                      {name: "Homework", description: "Children doing their homework without the help of the parents.", photo:"https://unsplash.com/photos/4E1JOFK55kc"}])
