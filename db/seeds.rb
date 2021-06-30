Movie.create!([
  {title: "Boys Don't Cry", year: 1999, plot: "Young female-to-male transgender Brandon Teena (Hilary Swank) leaves his hometown under threat when his ex-girlfriend's brother discovers that he's biologically female. Resettling in the small town of Falls City, Nebraska, Brandon falls for Lana (Chloë Sevigny), an aspiring singer, and begins to plan for their future together. But when her ex-convict friends, John (Peter Sarsgaard) and Tom (Brendan Sexton III), learn Brandon's secret, things change very quickly.", director: "Kimberly Peirce", english: true, image: "https://media.timeout.com/images/102963825/1372/772/image.jpg"},
  {title: "Happy Together", year: 1997, plot: "Lai (Tony Leung Chiu Wai) and his boyfriend, Ho (Leslie Cheung), arrive in Argentina from Hong Kong, seeking a better life. Their highly contentious relationship turns abusive and results in numerous break-ups and reconciliations. When Lai befriends another man, Chang (Chen Chang), he sees the futility of continuing with the promiscuous Ho. Chang, however, is on his own personal journey and, ultimately, both Lai and Ho find themselves far from home and desperately lonely.", director: "Wong Kar-wai", english: true, image: "https://media.timeout.com/images/102963864/1372/772/image.jpg"},
  {title: "My Own Private Idaho", year: 1991, plot: "In this loose adaptation of Shakespeare's Henry IV, Mike Waters (River Phoenix) is a gay hustler afflicted with narcolepsy. Scott Favor (Keanu Reeves) is the rebellious son of a mayor. Together, the two travel from Portland, Oregon to Idaho and finally to the coast of Italy in a quest to find Mike's estranged mother. Along the way they turn tricks for money and drugs, eventually attracting the attention of a wealthy benefactor and sexual deviant.", director: "Gus van Sant", english: true, image: "https://media.timeout.com/images/102963898/1372/772/image.jpg"},
  {title: "Paris Is Burning", year: 1990, plot: "This documentary focuses on drag queens living in New York City and their house culture, which provides a sense of community and support for the flamboyant and often socially shunned performers. Groups from each house compete in elaborate balls that take cues from the world of fashion. Also touching on issues of racism and poverty, the film features interviews with a number of renowned drag queens, including Willi Ninja, Pepper LaBeija and Dorian Corey.c", director: "Jennie Livingston", english: true, image: "https://media.timeout.com/images/102963904/1372/772/image.jpg"},
  {title: "The Killing of Sister George", year: 1968, plot: "June is an actress who portrays the popular Sister George in a British soap opera. The actress spends her time drinking and engaging in lesbian sex with her much younger lover Alice. A television executive decides she likes Alice and wants to write Sister George off the show. June watches as her behavior and insecurity drives Alice away.", director: "Robert Aldrich", english: true, image: "https://media.timeout.com/images/102963883/1372/772/image.jpg"},
  {title: "Call Me by Your Name", year: 2017, plot: "It's the summer of 1983, and precocious 17-year-old Elio Perlman is spending the days with his family at their 17th-century villa in Lombardy, Italy. He soon meets Oliver, a handsome doctoral student who's working as an intern for Elio's father. Amid the sun-drenched splendor of their surroundings, Elio and Oliver discover the heady beauty of awakening desire over the course of a summer that will alter their lives forever.", director: "Luca Guadagnino", english: true, image: "https://media.timeout.com/images/103977849/1372/772/image.jpg"},
  {title: "The Boys in the Band", year: 1970, plot: "A visitor turns an evening upside down when he interrupts a gathering of gay men in New York City in 1968.", director: "William Friedkin", english: true, image: "https://media.timeout.com/images/102963826/1372/772/image.jpg"},
  {title: "Moonlight", year: 2016, plot: "A look at three defining chapters in the life of Chiron, a young black man growing up in Miami. His epic journey to manhood is guided by the kindness, support and love of the community that helps raise him.", director: "Barry Jenkins", english: true, image: "https://media.timeout.com/images/103495233/1372/772/image.jpg"},
  {title: "Pink Flamingos", year: 1972, plot: "A bizarre fat woman (Divine) and her misfit family compete with a Baltimore couple (David Lochary, Mink Stole) to be named the filthiest people alive.", director: "John Waters", english: true, image: "https://media.timeout.com/images/102963930/1372/772/image.jpg"}
])

Genre.create!([
  {name: "Comedy"},
  {name: "Romantic Comedy"},
  {name: "Drama"},
  {name: "Action"},
  {name: "Sci-fi"},
  {name: "Documentary"}
])

MovieGenre.create!([
  {genre_id: 3, movie_id: 2},
  {genre_id: 1, movie_id: 9},
  {genre_id: 3, movie_id: 9},
  {genre_id: 3, movie_id: 8},
  {genre_id: 3, movie_id: 7},
  {genre_id: 3, movie_id: 6},
  {genre_id: 3, movie_id: 5},
  {genre_id: 6, movie_id: 4},
  {genre_id: 3, movie_id: 3},
  {genre_id: 3, movie_id: 1}
  ])
  

Actor.create!([
  {first_name: "Divine", last_name: " ", known_for: "Pink Flamingos", gender: "Woman", age: 43, movie_id: 9},
  {first_name: "Tarell Alvin", last_name: "McCraney", known_for: "Moonlight", gender: "male", age: 40, movie_id: 8},
  {first_name: "Kenneth", last_name: "Nelson", known_for: "The Boys in the Band", gender: "male", age: 63, movie_id: 7},
  {first_name: "Timothee", last_name: "Chalamet", known_for: "Call Me By Your Name", gender: "male", age: 25, movie_id: 6},
  {first_name: "Beryl Elizabet", last_name: "Reid", known_for: "The Killing Of Sister Geogre", gender: nil, age: 77, movie_id: 5},
  {first_name: "Paris", last_name: "Dupree ", known_for: "Paris Is Burning", gender: "queer", age: 61, movie_id: 4},
  {first_name: "River", last_name: "Pheonix ", known_for: "My Own Private Idaho", gender: "male", age: 23, movie_id: 3},
  {first_name: "Leslie", last_name: "Leslie ", known_for: "Happy Together", gender: "male", age: 46, movie_id: 2},
  {first_name: "Hilary", last_name: "Swank ", known_for: "Boys Don't Cry", gender: "female", age: 46, movie_id: 1}
])


User.create!([
  {name: "david", email: "david@gmail.com", password_digest: "$2a$12$yuDipZHUtdj92WDcg5agK.Rf8jPguQ2zvvdmh3480/2txO.8nGUES", admin: true},
  {name: "colin", email: "colin@gmail.com", password_digest: "$2a$12$1rN1ya6ic.7siRDmDY0l7.vULO56gEcSoi4/YVEF9VAWqCXHuOuZm", admin: false}
])
