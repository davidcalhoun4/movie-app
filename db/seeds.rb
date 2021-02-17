Movie.create!([
  {title: "American Beauty", year: 1999, plot: "American Beauty was one of the many fantastic movies of the 90s. Director Sam Mendes captures the struggles of Lester Burnham, a father caught in a serious midlife crisis, his daughter Jane, who finds love for the first time, and her beautiful yet lonely best friend Angela, played by the stunning Mena Suvari. When everything falls apart, the characters and the watchers start to find beauty in the little things.", director: "Sam Mendes", english: true},
  {title: "Perks of Being a Wallflower", year: 2012, plot: "Based on a novel, The Perks of Being a Wallflower follows emotional unstable Charlie through his first high school year. He soon becomes friends with a pretty girl named Sam and her gay half-brother Patrick. They teach Charlie that it’s okay to enjoy life and to forget your troubles for a while. This book adaption is starring Logan Lerman and Emma Watson, and not only will you realize that we all struggle with life once in a while, you will also learn a lot about music and real friendship.", director: "Stephen Chbosky", english: true},
  {title: "Barbarella", year: 1968, plot: "Barbarella, an astronaut from the 41st century, sets out to find and stop the evil scientist Durand Durand, whose Positronic Ray threatens to bring evil back into the galaxy.", director: "Rodger Vadim", english: true},
  {title: "Paris Is Burning", year: 1989, plot: "Ball scene nyc", director: "Unknown", english: nil},
  {title: "The Breakfast Club.", year: 1985, plot: "Five high school students who couldn’t be more different have to spend a Saturday detention session together. During this time they slowly find that apart from all their differences, they can connect on a deeper level. All five actors do a great job by first giving a cliché version of their characters and then turning them into human beings. Everyone—no matter what age—can learn something from these teenagers.", director: "John Hughes", english: true},
  {title: "Oceans 8", year: 2018, plot: "6 women steal a cartier necklace at the met gala. with an all star cast", director: "Gary Ross", english: true}
])

Genre.create!([
  {name: "Comedy"},
  {name: "Romantic Comedy"},
  {name: "Drama"},
  {name: "Action"},
  {name: "Sci-fi"}
])
MovieGenre.create!([
  {genre_id: 2, movie_id: 1},
  {genre_id: 3, movie_id: 2},
  {genre_id: 3, movie_id: 3},
  {genre_id: 4, movie_id: 4},
  {genre_id: 5, movie_id: 7},
  {genre_id: 1, movie_id: 1}
])
Actor.create!([
  {first_name: "Jane", last_name: "Fonda", known_for: "Grace & Frankie", gender: "woman", age: 83, movie_id: 7},
  {first_name: "Nathan", last_name: "Fillion", known_for: "Firefly", gender: "male", age: 49, movie_id: 1},
  {first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock", gender: "male", age: 44, movie_id: 2},
  {first_name: "Han", last_name: "Fonda", known_for: "Grace & Frankie", gender: nil, age: 44, movie_id: 3},
  {first_name: "Han", last_name: "Fonda", known_for: "who knows", gender: nil, age: 44, movie_id: 3},
  {first_name: "Meryl", last_name: "Streep ", known_for: "Julie & Julia", gender: "woman", age: 71, movie_id: 1}
])


User.create!([
  {name: "bowser", email: "bowser@gmail.com", password_digest: "$2a$12$YVt2C0IPzXIgMhyjGh3EoehU28uinu7h8Ggjk3nSjsAkcUl88UtCO", admin: true},
  {name: "david", email: "david@gmail.com", password_digest: "$2a$12$yuDipZHUtdj92WDcg5agK.Rf8jPguQ2zvvdmh3480/2txO.8nGUES", admin: false},
  {name: "colin", email: "colin@gmail.com", password_digest: "$2a$12$1rN1ya6ic.7siRDmDY0l7.vULO56gEcSoi4/YVEF9VAWqCXHuOuZm", admin: false},
  {name: "archie", email: "archie@gmail.com", password_digest: "$2a$12$N3MRSaD20DvtSqy1cMkwtuH8LwbYj1BVEcT2AIlhhk4hfaInbXmaC", admin: true}
])
