user = User.create(name:'Joe Bloggs', email:'joebloggs@gmail.com', password: 'pass')


user.workouts.create(distance: 25.5, hours: 1, mins: 23, secs: 45 )
user.workouts.create(distance: 30.8, hours: 2, mins: 23, secs: 45 )
user.workouts.create(distance: 56.2, hours: 5, mins: 23, secs: 45 )
user.workouts.create(distance: 34.4, hours: 2, mins: 23, secs: 45 )
user.workouts.create(distance: 25.4, hours: 1, mins: 23, secs: 45 )
user.workouts.create(distance: 26.4, hours: 1, mins: 23, secs: 45 )
