require("pry")
require_relative('../models/artist')
require_relative('../models/album')
require_relative('../db/sql_runner')

Artist.delete_all()
Album.delete_all()


artist1 = Artist.new({'name' => 'Pixies'})
artist1.save()

artist2 = Artist.new({'name' => 'Breeders'})
artist2.save()

artist3 = Artist.new({'name' => 'Frank Black'})
artist3.save()


all_artist = Artist.all()

album1 = Album.new({
  'title' => 'Surfa Rosa',
  'genre' => 'alternative',
  'artist_id' => artist1.id
  })

  album2 = Album.new({
    'title' => 'Last Splash',
    'genre' => 'alternative',
    'artist_id' => artist2.id
    })

  album3 = Album.new({
  'title' => 'Teenager of the year',
  'genre' => 'alternative',
  'artist_id' => artist3.id
  })


  album4 = Album.new({
  'title' => 'Doolittle',
  'genre' => 'alternative',
  'artist_id' => artist1.id
  })


  album5 = Album.new({
  'title' => 'Pod',
  'genre' => 'alternative',
  'artist_id' => artist2.id
  })


  album6 = Album.new({
  'title' => 'The Cult of Ray',
  'genre' => 'alternative',
  'artist_id' => artist3.id
  })


album1.save()
album2.save()
album3.save()
album4.save()
album5.save()
album6.save()



binding.pry
nil
