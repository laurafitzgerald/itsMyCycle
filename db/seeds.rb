user = User.create(name:'Joe Bloggs', email:'joebloggs@gmail.com', password: 'pass')


workout = Workout.create(distance: '25', hours: '1', mins: '23', secs: '45' )
workout.user = user