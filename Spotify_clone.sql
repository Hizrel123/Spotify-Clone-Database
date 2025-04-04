-- Schema.sql Structure (
-- Create Users table
/*CREATE TABLE Users (
  id INT PRIMARY KEY,
  username VARCHAR(50),
  email VARCHAR(100),
  signup_date DATE
);

-- Create Artists table
CREATE TABLE Artists (
  id INT PRIMARY KEY,
  name VARCHAR(100),
  genre VARCHAR(50)
);

-- Create Albums table
CREATE TABLE Albums (
  id INT PRIMARY KEY,
  artist_id INT,
  title VARCHAR(100),
  release_year YEAR,
  FOREIGN KEY (artist_id) REFERENCES Artists(id)
);

-- Create Songs table
CREATE TABLE Songs (
  id INT PRIMARY KEY,
  album_id INT,
  title VARCHAR(100),
  duration_in_sec INT,
  FOREIGN KEY (album_id) REFERENCES Albums(id)
);

-- Create Playlists table
CREATE TABLE Playlists (
  id INT PRIMARY KEY,
  user_id INT,
  title VARCHAR(100),
  created_at DATE,
  FOREIGN KEY (user_id) REFERENCES Users(id)
);

-- Create PlaylistSongs table
CREATE TABLE PlaylistSongs (
  id INT PRIMARY KEY,
  playlist_id INT,
  song_id INT,
  FOREIGN KEY (playlist_id) REFERENCES Playlists(id),
  FOREIGN KEY (song_id) REFERENCES Songs(id)
);
*/ 

/* INSERT statemnets
-- Adding 100 Users
INSERT INTO Users (id, username, email, signup_date) VALUES
(1, 'realspinn', 'realspinn@example.com', '2024-01-15'),
(2, 'musiclover88', 'musiclover88@example.com', '2023-06-23'),
(3, 'dj_izzy', 'dj_izzy@example.com', '2024-03-11'),
(4, 'jazzfan92', 'jazzfan92@example.com', '2022-11-09'),
(5, 'pop_queen', 'pop_queen@example.com', '2024-02-01'),
(6, 'rockstar123', 'rockstar123@example.com', '2023-09-14'),
(7, 'indie_king', 'indie_king@example.com', '2022-10-07'),
(8, 'classical_guy', 'classical_guy@example.com', '2024-01-20'),
(9, 'hiphopfan90', 'hiphopfan90@example.com', '2023-08-30'),
(10, 'reggae_lover', 'reggae_lover@example.com', '2023-05-25'),
(11, 'popfan123', 'popfan123@example.com', '2024-02-17'),
(12, 'rocklover88', 'rocklover88@example.com', '2023-12-01'),
(13, 'chillguy1', 'chillguy1@example.com', '2023-10-25'),
(14, 'punkfan_24', 'punkfan_24@example.com', '2023-07-16'),
(15, 'classic_soul', 'classic_soul@example.com', '2024-03-03'),
(16, 'urban_guy', 'urban_guy@example.com', '2023-11-14'),
(17, 'retro_nights', 'retro_nights@example.com', '2022-08-19'),
(18, 'edm_king', 'edm_king@example.com', '2024-01-05'),
(19, 'rappers_delight', 'rappers_delight@example.com', '2023-09-30'),
(20, 'indie_bandit', 'indie_bandit@example.com', '2023-06-10'),
(21, 'classic_musicfan', 'classic_musicfan@example.com', '2023-04-12'),
(22, 'beatmaker92', 'beatmaker92@example.com', '2024-02-28'),
(23, 'dreamy_vibes', 'dreamy_vibes@example.com', '2023-01-19'),
(24, 'hiphopjunkie', 'hiphopjunkie@example.com', '2023-07-05'),
(25, 'soulpower', 'soulpower@example.com', '2024-03-01'),
(26, 'melodicmuse', 'melodicmuse@example.com', '2023-11-02'),
(27, 'punkrocker_', 'punkrocker_@example.com', '2022-05-15'),
(28, 'audiophile92', 'audiophile92@example.com', '2024-02-14'),
(29, 'vinylvibes', 'vinylvibes@example.com', '2023-06-18'),
(30, 'urbanbeatz', 'urbanbeatz@example.com', '2023-10-30'),
(31, 'indie_sounds', 'indie_sounds@example.com', '2024-03-10'),
(32, 'smoothvibes', 'smoothvibes@example.com', '2023-02-22'),
(33, 'groovymusician', 'groovymusician@example.com', '2023-08-03'),
(34, 'guitarfanatic', 'guitarfanatic@example.com', '2023-12-10'),
(35, 'triphopqueen', 'triphopqueen@example.com', '2023-09-09'),
(36, 'vibewithme', 'vibewithme@example.com', '2024-01-01'),
(37, 'housemusicfan', 'housemusicfan@example.com', '2022-04-14'),
(38, 'rnbgoddess', 'rnbgoddess@example.com', '2024-02-23'),
(39, 'newagebeats', 'newagebeats@example.com', '2023-11-25'),
(40, 'bassheadz', 'bassheadz@example.com', '2023-05-10'),
(41, 'rockon123', 'rockon123@example.com', '2024-02-20'),
(42, 'pop_night', 'pop_night@example.com', '2023-12-05'),
(43, 'edm_sensation', 'edm_sensation@example.com', '2023-07-01'),
(44, 'soul_jazz_fan', 'soul_jazz_fan@example.com', '2023-03-12'),
(45, 'musicfanatic23', 'musicfanatic23@example.com', '2023-06-30'),
(46, 'altrocker_25', 'altrocker_25@example.com', '2022-08-03'),
(47, 'hiphopguru', 'hiphopguru@example.com', '2023-02-02'),
(48, 'rocknrollfan', 'rocknrollfan@example.com', '2024-01-12'),
(49, 'classicsoullover', 'classicsoullover@example.com', '2023-04-25'),
(50, 'indie_melodies', 'indie_melodies@example.com', '2023-11-18'),
(51, 'dancemaster_23', 'dancemaster_23@example.com', '2022-09-08'),
(52, 'djtechno', 'djtechno@example.com', '2024-03-04'),
(53, 'lofi_vibes', 'lofi_vibes@example.com', '2023-07-18'),
(54, 'musicsnob', 'musicsnob@example.com', '2023-10-01'),
(55, 'guitarheros', 'guitarheros@example.com', '2023-11-20'),
(56, 'undergroundvibes', 'undergroundvibes@example.com', '2024-01-13'),
(57, 'smoothgrooves', 'smoothgrooves@example.com', '2023-09-05'),
(58, 'soulvisionary', 'soulvisionary@example.com', '2023-05-14'),
(59, 'raversdelight', 'raversdelight@example.com', '2022-12-03'),
(60, 'clubmaster88', 'clubmaster88@example.com', '2024-02-22'),
(61, 'chillhopfan', 'chillhopfan@example.com', '2023-06-27'),
(62, 'electromaniac', 'electromaniac@example.com', '2024-03-12'),
(63, 'kpopfanatic_', 'kpopfanatic_@example.com', '2023-11-08'),
(64, 'electro_junkie', 'electro_junkie@example.com', '2023-01-01'),
(65, 'retrospirit', 'retrospirit@example.com', '2024-02-15'),
(66, 'rockretrofan', 'rockretrofan@example.com', '2023-07-25'),
(67, 'pop_headz', 'pop_headz@example.com', '2023-06-05'),
(68, 'urbanjams_', 'urbanjams_@example.com', '2024-02-10'),
(69, 'drumandbass_king', 'drumandbass_king@example.com', '2023-08-18'),
(70, 'groovetronix', 'groovetronix@example.com', '2023-12-20'),
(71, 'beatsheadz', 'beatsheadz@example.com', '2023-03-17'),
(72, 'newmusicfan', 'newmusicfan@example.com', '2023-09-22'),
(73, 'indierockmaster', 'indierockmaster@example.com', '2024-01-02'),
(74, 'soulvibes24', 'soulvibes24@example.com', '2023-06-02'),
(75, 'popvibes_88', 'popvibes_88@example.com', '2023-05-08'),
(76, 'edmsensation_', 'edmsensation_@example.com', '2023-07-13'),
(77, 'rocklover_26', 'rocklover_26@example.com', '2024-02-17'),
(78, 'chillguy_01', 'chillguy_01@example.com', '2023-12-03'),
(79, 'discomaster_', 'discomaster_@example.com', '2024-01-25'),
(80, 'hypedhiphopfan', 'hypedhiphopfan@example.com', '2023-10-11'),
(81, 'techno_addict', 'techno_addict@example.com', '2023-09-03'),
(82, 'retrobeatslover', 'retrobeatslover@example.com', '2024-03-20'),
(83, 'indie_dreamer', 'indie_dreamer@example.com', '2022-06-17'),
(84, 'vibeyguy', 'vibeyguy@example.com', '2024-03-02'),
(85, 'rnbnight', 'rnbnight@example.com', '2023-10-30'),
(86, 'indieguitarist', 'indieguitarist@example.com', '2023-01-15'),
(87, 'chillvibez', 'chillvibez@example.com', '2023-08-09'),
(88, 'edmlove24', 'edmlove24@example.com', '2023-06-12'),
(89, 'popmood', 'popmood@example.com', '2023-03-02'),
(90, 'vinylvibez_', 'vinylvibez_@example.com', '2022-10-10'),
(91, 'bohemian_lover', 'bohemian_lover@example.com', '2023-08-15'),
(92, 'retrofanatic', 'retrofanatic@example.com', '2023-04-30'),
(93, 'popmasterfan', 'popmasterfan@example.com', '2024-01-14'),
(94, 'chillwave_dreamer', 'chillwave_dreamer@example.com', '2023-07-23'),
(95, 'oldschooljams', 'oldschooljams@example.com', '2024-02-25'),
(96, 'rnb_loveaffair', 'rnb_loveaffair@example.com', '2023-01-28'),
(97, 'alternativebeats', 'alternativebeats@example.com', '2024-01-17'),
(98, 'raveheart', 'raveheart@example.com', '2023-11-14'),
(99, 'musicstreamer_24', 'musicstreamer_24@example.com', '2023-05-10'),
(100, 'music_ninja', 'music_ninja@example.com', '2024-04-01');


INSERT INTO Artists (id, name, genre) VALUES
(1, 'The Beatles', 'Rock'),
(2, 'Beyoncé', 'R&B/Pop'),
(3, 'Miles Davis', 'Jazz'),
(4, 'Ludwig van Beethoven', 'Classical'),
(5, 'Bob Marley', 'Reggae'),
(6, 'Daft Punk', 'Electronic'),
(7, 'Ella Fitzgerald', 'Jazz'),
(8, 'Kendrick Lamar', 'Hip Hop'),
(9, 'Wolfgang Amadeus Mozart', 'Classical'),
(10, 'Nina Simone', 'Jazz/Soul'),
(11, 'Radiohead', 'Alternative Rock'),
(12, 'Taylor Swift', 'Pop/Country'),
(13, 'Johann Sebastian Bach', 'Classical'),
(14, 'David Bowie', 'Rock'),
(15, 'Billie Holiday', 'Jazz'),
(16, 'Pink Floyd', 'Progressive Rock'),
(17, 'Prince', 'Funk/Rock'),
(18, 'Jimi Hendrix', 'Rock'),
(19, 'The Rolling Stones', 'Rock'),
(20, 'Aretha Franklin', 'Soul'),
(21, 'Led Zeppelin', 'Rock'),
(22, 'Bob Dylan', 'Folk/Rock'),
(23, 'Queen', 'Rock'),
(24, 'The Weeknd', 'R&B/Pop'),
(25, 'Tchaikovsky', 'Classical'),
(26, 'Frank Sinatra', 'Jazz/Pop'),
(27, 'Kanye West', 'Hip Hop'),
(28, 'Adele', 'Pop/Soul'),
(29, 'Louis Armstrong', 'Jazz'),
(30, 'Drake', 'Hip Hop/R&B'),
(31, 'The Who', 'Rock'),
(32, 'Elvis Presley', 'Rock/Pop'),
(33, 'John Coltrane', 'Jazz'),
(34, 'Rihanna', 'Pop/R&B'),
(35, 'Patti Smith', 'Punk Rock'),
(36, 'Jay-Z', 'Hip Hop'),
(37, 'Fleetwood Mac', 'Rock'),
(38, 'Billie Eilish', 'Alternative Pop'),
(39, 'The Clash', 'Punk Rock'),
(40, 'Stevie Wonder', 'Soul/R&B'),
(41, 'The Doors', 'Rock'),
(42, 'Björk', 'Experimental/Electronic'),
(43, 'Chopin', 'Classical'),
(44, 'Snoop Dogg', 'Hip Hop'),
(45, 'The Velvet Underground', 'Experimental Rock'),
(46, 'Ariana Grande', 'Pop/R&B'),
(47, 'Debussy', 'Classical'),
(48, 'Tame Impala', 'Psychedelic Rock'),
(49, 'Marvin Gaye', 'Soul'),
(50, 'The Strokes', 'Indie Rock'),
(51, 'Ed Sheeran', 'Pop/Folk'),
(52, 'Sigur Rós', 'Post-Rock'),
(53, 'Janis Joplin', 'Rock/Blues'),
(54, 'Travis Scott', 'Hip Hop'),
(55, 'Stravinsky', 'Classical'),
(56, 'Arctic Monkeys', 'Indie Rock'),
(57, 'Amy Winehouse', 'Soul/Jazz'),
(58, 'The Cure', 'Post-Punk'),
(59, 'Post Malone', 'Hip Hop/Pop'),
(60, 'Vivaldi', 'Classical'),
(61, 'Black Sabbath', 'Heavy Metal'),
(62, 'Lana Del Rey', 'Alternative Pop'),
(63, 'Johnny Cash', 'Country'),
(64, 'Kraftwerk', 'Electronic'),
(65, 'Portishead', 'Trip Hop'),
(66, 'Bruno Mars', 'Pop/R&B'),
(67, 'Metallica', 'Heavy Metal'),
(68, 'The Smiths', 'Indie Rock'),
(69, 'Duke Ellington', 'Jazz'),
(70, 'Lady Gaga', 'Pop'),
(71, 'Red Hot Chili Peppers', 'Alternative Rock'),
(72, 'Eminem', 'Hip Hop'),
(73, 'Pixies', 'Alternative Rock'),
(74, 'Thelonious Monk', 'Jazz'),
(75, 'Coldplay', 'Alternative Rock'),
(76, 'M.I.A.', 'Electronic/Hip Hop'),
(77, 'Arcade Fire', 'Indie Rock'),
(78, 'Joni Mitchell', 'Folk'),
(79, 'OutKast', 'Hip Hop'),
(80, 'Nine Inch Nails', 'Industrial Rock'),
(81, 'The White Stripes', 'Rock'),
(82, 'Kendrick Lamar', 'Hip Hop'),
(83, 'Aphex Twin', 'Electronic'),
(84, 'FKA twigs', 'Alternative R&B'),
(85, 'Gorillaz', 'Alternative/Electronic'),
(86, 'Massive Attack', 'Trip Hop'),
(87, 'Leonard Cohen', 'Folk'),
(88, 'Dolly Parton', 'Country'),
(89, 'Talking Heads', 'New Wave'),
(90, 'Grimes', 'Electronic/Experimental'),
(91, 'The Chemical Brothers', 'Electronic'),
(92, 'Carole King', 'Pop'),
(93, 'Nick Cave & The Bad Seeds', 'Alternative Rock'),
(94, 'Sufjan Stevens', 'Indie Folk'),
(95, 'Brian Eno', 'Ambient/Experimental'),
(96, 'Kate Bush', 'Art Pop'),
(97, 'The Notorious B.I.G.', 'Hip Hop'),
(98, 'Joy Division', 'Post-Punk'),
(99, 'Sergei Rachmaninoff', 'Classical'),
(100, 'Phoebe Bridgers', 'Indie Folk');

INSERT INTO Albums (id, artist_id, title, release_year) VALUES
(1, 1, 'Sgt. Pepper''s Lonely Hearts Club Band', 1967),
(2, 2, 'Renaissance', 2022),
(3, 3, 'Bitches Brew', 1970),
(4, 4, 'Symphony No. 9 (Choral)', 1951), -- Replaced: Karajan's famous recording
(5, 5, 'Exodus', 1977),
(6, 6, 'Discovery', 2001),
(7, 7, 'Ella Fitzgerald Sings the Cole Porter Songbook', 1956),
(8, 8, 'good kid, m.A.A.d city', 2012),
(9, 9, 'Mozart: Greatest Hits (Compilation)', 1991), -- Replaced: Modern compilation
(10, 10, 'Wild Is the Wind', 1966),
(11, 11, 'OK Computer', 1997),
(12, 12, '1989', 2014),
(13, 13, 'Bach: Goldberg Variations (Gould)', 1955), -- Replaced: Glenn Gould's recording
(14, 14, 'The Rise and Fall of Ziggy Stardust', 1972),
(15, 15, 'Lady Sings the Blues', 1956),
(16, 16, 'The Dark Side of the Moon', 1973),
(17, 17, 'Purple Rain', 1984),
(18, 18, 'Electric Ladyland', 1968),
(19, 19, 'Exile on Main St.', 1972),
(20, 20, 'I Never Loved a Man the Way I Love You', 1967),
(21, 21, 'Led Zeppelin IV', 1971),
(22, 22, 'Highway 61 Revisited', 1965),
(23, 23, 'A Night at the Opera', 1975),
(24, 24, 'After Hours', 2020),
(25, 25, 'Tchaikovsky: Swan Lake (Ansermet)', 1959), -- Replaced: Orchestre de la Suisse Romande
(26, 26, 'In the Wee Small Hours', 1955),
(27, 27, 'My Beautiful Dark Twisted Fantasy', 2010),
(28, 28, '21', 2011),
(29, 29, 'What a Wonderful World', 1968),
(30, 30, 'Take Care', 2011),
(31, 31, 'Who''s Next', 1971),
(32, 32, 'Elvis Presley', 1956),
(33, 33, 'A Love Supreme', 1965),
(34, 34, 'Anti', 2016),
(35, 35, 'Horses', 1975),
(36, 36, 'The Blueprint', 2001),
(37, 37, 'Rumours', 1977),
(38, 38, 'When We All Fall Asleep, Where Do We Go?', 2019),
(39, 39, 'London Calling', 1979),
(40, 40, 'Songs in the Key of Life', 1976),
(41, 41, 'L.A. Woman', 1971),
(42, 42, 'Homogenic', 1997),
(43, 43, 'Chopin: Nocturnes (Rubinstein)', 1965), -- Replaced: Arthur Rubinstein recording
(44, 44, 'Doggystyle', 1993),
(45, 45, 'The Velvet Underground & Nico', 1967),
(46, 46, 'Thank U, Next', 2019),
(47, 47, 'Debussy: Clair de Lune (Orchestral)', 1958), -- Replaced: Boston Symphony Orchestra
(48, 48, 'Currents', 2015),
(49, 49, 'What''s Going On', 1971),
(50, 50, 'Is This It', 2001),
(51, 51, '÷ (Divide)', 2017),
(52, 52, 'Ágætis byrjun', 1999),
(53, 53, 'Pearl', 1971),
(54, 54, 'Astroworld', 2018),
(55, 55, 'Stravinsky: The Rite of Spring (Bernstein)', 1958), -- Replaced: NY Philharmonic
(56, 56, 'AM', 2013),
(57, 57, 'Back to Black', 2006),
(58, 58, 'Disintegration', 1989),
(59, 59, 'Hollywood''s Bleeding', 2019),
(60, 60, 'Vivaldi: The Four Seasons (Marriner)', 1969), -- Replaced: Academy of St Martin in the Fields
(61, 61, 'Paranoid', 1970),
(62, 62, 'Norman Fucking Rockwell!', 2019),
(63, 63, 'At Folsom Prison', 1968),
(64, 64, 'Trans-Europe Express', 1977),
(65, 65, 'Dummy', 1994),
(66, 66, '24K Magic', 2016),
(67, 67, 'Master of Puppets', 1986),
(68, 68, 'The Queen Is Dead', 1986),
(69, 69, 'Ellington at Newport', 1956),
(70, 70, 'The Fame Monster', 2009),
(71, 71, 'Californication', 1999),
(72, 72, 'The Marshall Mathers LP', 2000),
(73, 73, 'Doolittle', 1989),
(74, 74, 'Brilliant Corners', 1957),
(75, 75, 'A Rush of Blood to the Head', 2002),
(76, 76, 'Kala', 2007),
(77, 77, 'Funeral', 2004),
(78, 78, 'Blue', 1971),
(79, 79, 'Stankonia', 2000),
(80, 80, 'The Downward Spiral', 1994),
(81, 81, 'Elephant', 2003),
(82, 82, 'DAMN.', 2017),
(83, 83, 'Selected Ambient Works 85-92', 1992),
(84, 84, 'Magdalene', 2019),
(85, 85, 'Demon Days', 2005),
(86, 86, 'Mezzanine', 1998),
(87, 87, 'Songs of Love and Hate', 1971),
(88, 88, 'Jolene', 1974),
(89, 89, 'Remain in Light', 1980),
(90, 90, 'Visions', 2012),
(91, 91, 'Surrender', 1999),
(92, 92, 'Tapestry', 1971),
(93, 93, 'The Boatman''s Call', 1997),
(94, 94, 'Carrie & Lowell', 2015),
(95, 95, 'Another Green World', 1975),
(96, 96, 'Hounds of Love', 1985),
(97, 97, 'Ready to Die', 1994),
(98, 98, 'Unknown Pleasures', 1979),
(99, 99, 'Rachmaninoff: Piano Concerto No. 2 (Richter)', 1959), -- Replaced: Sviatoslav Richter
(100, 100, 'Punisher', 2020);

INSERT INTO Songs (id, album_id, title, duration_in_sec) VALUES
-- Sgt. Pepper's Lonely Hearts Club Band (album_id=1)
(1001, 1, 'With a Little Help from My Friends', 164),
(1002, 1, 'Lucy in the Sky with Diamonds', 208),
(1003, 1, 'A Day in the Life', 335),

-- Renaissance (album_id=2)
(1004, 2, 'CUFF IT', 217),
(1005, 2, 'BREAK MY SOUL', 279),
(1006, 2, 'VIRGO''S GROOVE', 403),

-- Bitches Brew (album_id=3)
(1007, 3, 'Pharaoh''s Dance', 405),
(1008, 3, 'Bitches Brew', 807),

-- Symphony No. 9 (Choral) (album_id=4)
(1009, 4, 'I. Allegro ma non troppo', 898),
(1010, 4, 'IV. Finale (Ode to Joy)', 1024),

-- Exodus (album_id=5)
(1011, 5, 'Jamming', 198),
(1012, 5, 'One Love/People Get Ready', 174),

-- Discovery (album_id=6)
(1013, 6, 'One More Time', 320),
(1014, 6, 'Harder, Better, Faster, Stronger', 224),

-- OK Computer (album_id=11)
(1015, 11, 'Paranoid Android', 383),
(1016, 11, 'Karma Police', 262),

-- The Dark Side of the Moon (album_id=16)
(1017, 16, 'Money', 382),
(1018, 16, 'Time', 413),

-- Purple Rain (album_id=17)
(1019, 17, 'When Doves Cry', 336),
(1020, 17, 'Purple Rain', 512),

-- Currents (album_id=48)
(1021, 48, 'Let It Happen', 467),
(1022, 48, 'The Less I Know the Better', 216),

-- 1989 (album_id=12)
(1023, 12, 'Blank Space', 231),
(1024, 12, 'Shake It Off', 219),

-- good kid, m.A.A.d city (album_id=8)
(1025, 8, 'Bitch, Don''t Kill My Vibe', 314),
(1026, 8, 'Swimming Pools (Drank)', 314),

-- Random Access Memories (album_id=6)
(1027, 6, 'Get Lucky', 369),
(1028, 6, 'Instant Crush', 337),

-- Back to Black (album_id=57)
(1029, 57, 'Rehab', 213),
(1030, 57, 'Back to Black', 240),

-- Rumours (album_id=37)
(1031, 37, 'Go Your Own Way', 218),
(1032, 37, 'Dreams', 257),

-- The Marshall Mathers LP (album_id=72)
(1033, 72, 'The Real Slim Shady', 284),
(1034, 72, 'Stan', 404),

-- AM (album_id=56)
(1035, 56, 'Do I Wanna Know?', 272),
(1036, 56, 'R U Mine?', 201),

-- After Hours (album_id=24)
(1037, 24, 'Blinding Lights', 201),
(1038, 24, 'Save Your Tears', 215),

-- DAMN. (album_id=82)
(1039, 82, 'HUMBLE.', 177),
(1040, 82, 'DNA.', 185),

-- Punisher (album_id=100)
(1041, 100, 'Kyoto', 223),
(1042, 100, 'I Know the End', 353),

-- Additional songs to reach 100 records
(1043, 3, 'Spanish Key', 552),
(1044, 5, 'Three Little Birds', 180),
(1045, 7, 'Anything Goes', 232),
(1046, 9, 'Eine kleine Nachtmusik', 348),
(1047, 10, 'Feeling Good', 178),
(1048, 13, 'Air on the G String', 307),
(1049, 14, 'Suffragette City', 213),
(1050, 15, 'Strange Fruit', 193),
(1051, 18, 'Voodoo Child (Slight Return)', 309),
(1052, 19, 'Tumbling Dice', 231),
(1053, 20, 'Respect', 147),
(1054, 21, 'Stairway to Heaven', 482),
(1055, 22, 'Like a Rolling Stone', 369),
(1056, 23, 'Bohemian Rhapsody', 354),
(1057, 25, 'Dance of the Sugar Plum Fairy', 89),
(1058, 26, 'I Get a Kick Out of You', 193),
(1059, 27, 'Runaway', 448),
(1060, 28, 'Rolling in the Deep', 228),
(1061, 29, 'Hello, Dolly!', 146),
(1062, 30, 'Marvins Room', 382),
(1063, 31, 'Baba O''Riley', 305),
(1064, 32, 'Hound Dog', 137),
(1065, 33, 'Acknowledgement', 443),
(1066, 34, 'Work', 219),
(1067, 35, 'Gloria', 342),
(1068, 36, 'Izzo (H.O.V.A.)', 250),
(1069, 38, 'bad guy', 194),
(1070, 39, 'Train in Vain', 189),
(1071, 40, 'Isn''t She Lovely', 383),
(1072, 41, 'Riders on the Storm', 434),
(1073, 42, 'Jóga', 288),
(1074, 43, 'Nocturne in E-flat Major', 282),
(1075, 44, 'Gin and Juice', 208),
(1076, 45, 'Sunday Morning', 174),
(1077, 46, 'thank u, next', 207),
(1078, 47, 'Clair de Lune', 301),
(1079, 49, 'Mercy Mercy Me', 193),
(1080, 50, 'Last Nite', 197),
(1081, 51, 'Shape of You', 233),
(1082, 52, 'Svefn-g-englar', 615),
(1083, 53, 'Me and Bobby McGee', 259),
(1084, 54, 'SICKO MODE', 312),
(1085, 55, 'The Rite of Spring: Part I', 563),
(1086, 58, 'Lovesong', 210),
(1087, 59, 'Circles', 215),
(1088, 60, 'Spring (Allegro)', 198),
(1089, 61, 'Iron Man', 357),
(1090, 62, 'Doin'' Time', 213),
(1091, 63, 'Folsom Prison Blues', 168),
(1092, 64, 'Europe Endless', 542),
(1093, 65, 'Glory Box', 305),
(1094, 66, '24K Magic', 226),
(1095, 67, 'Master of Puppets', 515),
(1096, 68, 'There Is a Light That Never Goes Out', 242),
(1097, 69, 'Diminuendo and Crescendo in Blue', 914),
(1098, 70, 'Bad Romance', 294),
(1099, 71, 'Scar Tissue', 216),
(1100, 73, 'Here Comes Your Man', 192);


INSERT INTO Playlists (id, user_id, title, created_at) VALUES
-- Users 1-10
(5001, 1, 'Morning Motivation', '2023-01-05'),
(5002, 2, 'Workout Pump', '2023-02-10'),
(5003, 3, 'Chill Vibes', '2022-11-15'),
(5004, 4, 'Study Focus', '2023-03-20'),
(5005, 5, 'Road Trip Mix', '2022-12-25'),
(5006, 6, '90s Nostalgia', '2023-04-30'),
(5007, 7, 'Jazz Lounge', '2022-10-05'),
(5008, 8, 'Romantic Dinner', '2023-05-12'),
(5009, 9, 'Indie Discoveries', '2023-01-18'),
(5010, 10, 'Metal Essentials', '2022-09-22'),

-- Users 11-20
(5011, 11, 'Classical Masterpieces', '2023-02-15'),
(5012, 12, 'Summer Pool Party', '2022-08-08'),
(5013, 13, 'Electronic Energy', '2023-04-17'),
(5014, 14, 'Coffee House', '2023-03-03'),
(5015, 15, 'Hip Hop Classics', '2022-11-28'),
(5016, 16, 'Acoustic Sessions', '2023-05-19'),
(5017, 17, 'Disco Fever', '2022-12-12'),
(5018, 18, 'Reggae Roots', '2023-01-30'),
(5019, 19, 'Film Scores', '2022-10-20'),
(5020, 20, 'R&B Slow Jams', '2023-04-05'),

-- Users 21-30
(5021, 21, 'Country Roads', '2023-02-22'),
(5022, 22, 'Psychedelic Trip', '2022-09-15'),
(5023, 23, 'Motown Magic', '2023-05-08'),
(5024, 24, 'French House', '2022-11-11'),
(5025, 25, 'Blue Note Jazz', '2023-03-25'),
(5026, 26, 'Soul Food', '2022-12-30'),
(5027, 27, 'Ambient Space', '2023-01-07'),
(5028, 28, 'Folk Revival', '2022-10-10'),
(5029, 29, 'K-Pop Hits', '2023-04-18'),
(5030, 30, 'Desert Island Discs', '2023-02-28'),

-- Users 31-40
(5031, 31, '80s Synthwave', '2022-08-25'),
(5032, 32, 'Tropical House', '2023-05-15'),
(5033, 33, 'Guitar Heroes', '2022-11-05'),
(5034, 34, 'Piano Ballads', '2023-03-10'),
(5035, 35, 'Alternative 00s', '2022-12-20'),
(5036, 36, 'Vinyl Collection', '2023-01-12'),
(5037, 37, 'Brazilian Bossa', '2023-04-22'),
(5038, 38, 'Neo-Soul Grooves', '2022-09-30'),
(5039, 39, 'Prog Rock Journey', '2023-02-05'),
(5040, 40, 'Dancefloor Fillers', '2022-10-15'),

-- Users 41-50
(5041, 41, 'Sad Girl Autumn', '2023-05-01'),
(5042, 42, 'Blues Legends', '2022-11-20'),
(5043, 43, 'Indie Folk Campfire', '2023-03-15'),
(5044, 44, 'Punk Rawk', '2022-12-05'),
(5045, 45, 'City Pop Dreams', '2023-04-10'),
(5046, 46, 'Opera Highlights', '2023-01-25'),
(5047, 47, 'Trap Anthems', '2022-10-30'),
(5048, 48, 'Lo-Fi Beats', '2023-02-14'),
(5049, 49, 'Southern Rock', '2022-09-05'),
(5050, 50, 'New Wave Classics', '2023-05-20'),

-- Users 51-60
(5051, 51, 'Jazz Fusion', '2023-03-05'),
(5052, 52, 'Disney Nostalgia', '2022-11-15'),
(5053, 53, 'Grunge Era', '2023-04-25'),
(5054, 54, 'Afrobeat Rhythms', '2022-12-10'),
(5055, 55, 'Hard Rock Essentials', '2023-01-30'),
(5056, 56, 'Singer-Songwriter Stories', '2022-10-20'),
(5057, 57, 'Experimental Electronics', '2023-05-05'),
(5058, 58, 'Motivational Boost', '2022-09-10'),
(5059, 59, 'Classic Rock Radio', '2023-02-15'),
(5060, 60, 'Smooth Sax', '2022-11-25'),

-- Users 61-70
(5061, 61, 'Britpop Invasion', '2023-04-30'),
(5062, 62, 'Deep House Sessions', '2022-12-15'),
(5063, 63, '70s Funk', '2023-01-20'),
(5064, 64, 'Latin Party', '2022-10-05'),
(5065, 65, 'Indie Dance', '2023-05-10'),
(5066, 66, 'Post-Rock Soundscapes', '2022-09-15'),
(5067, 67, 'Old School Hip Hop', '2023-03-25'),
(5068, 68, 'Karaoke Favorites', '2022-11-30'),
(5069, 69, 'Bluegrass Picking', '2023-04-05'),
(5070, 70, 'EDM Festival', '2022-12-20'),

-- Users 71-80
(5071, 71, 'Girl Group Anthems', '2023-02-28'),
(5072, 72, 'Surf Rock', '2022-10-10'),
(5073, 73, 'Minimal Techno', '2023-05-15'),
(5074, 74, 'Yacht Rock', '2022-09-20'),
(5075, 75, 'Bollywood Hits', '2023-01-05'),
(5076, 76, 'Gothic Darkwave', '2022-11-10'),
(5077, 77, 'J-Pop Energy', '2023-04-20'),
(5078, 78, 'Americana Roots', '2022-12-25'),
(5079, 79, 'Trip Hop Moods', '2023-03-10'),
(5080, 80, 'Celtic Folk', '2022-10-30'),

-- Users 81-90
(5081, 81, 'Ska Revival', '2023-05-25'),
(5082, 82, 'Nature Sounds', '2022-11-05'),
(5083, 83, 'Big Band Swing', '2023-02-10'),
(5084, 84, 'Reggaeton Flow', '2022-09-15'),
(5085, 85, 'Power Ballads', '2023-04-30'),
(5086, 86, 'Medieval Tavern', '2022-12-05'),
(5087, 87, 'Stadium Anthems', '2023-01-10'),
(5088, 88, 'Asian Underground', '2022-10-15'),
(5089, 89, '00s Pop Punk', '2023-05-20'),
(5090, 90, 'Gaming Soundtrack', '2022-11-25'),

-- Users 91-100
(5091, 91, 'Art Rock Explorations', '2023-03-30'),
(5092, 92, 'Stand-Up Comedy', '2022-09-05'),
(5093, 93, 'Dubstep Drops', '2023-04-10'),
(5094, 94, 'Motivation Mix', '2022-12-15'),
(5095, 95, 'Shoegaze Dream', '2023-01-20'),
(5096, 96, 'Christmas Spirit', '2022-10-25'),
(5097, 97, 'Spoken Word', '2023-05-05'),
(5098, 98, 'Heavy Metal Thunder', '2022-11-10'),
(5099, 99, 'Jazz Rap', '2023-02-15'),
(5100, 100, 'AI-Generated Moods', '2022-09-20');


INSERT INTO PlaylistSongs (id, playlist_id, song_id) VALUES
-- Playlist 5001 (Morning Motivation)
(10001, 5001, 1037), -- Blinding Lights
(10002, 5001, 1023), -- Blank Space
(10003, 5001, 1013), -- One More Time

-- Playlist 5002 (Workout Pump)
(10004, 5002, 1019), -- When Doves Cry
(10005, 5002, 1039), -- HUMBLE.
(10006, 5002, 1027), -- Get Lucky

-- Playlist 5003 (Chill Vibes)
(10007, 5003, 1078), -- Clair de Lune
(10008, 5003, 1041), -- Kyoto
(10009, 5003, 1015), -- Paranoid Android

-- Playlist 5004 (Study Focus)
(10010, 5004, 1009), -- Symphony No. 9: I. Allegro
(10011, 5004, 1048), -- Lo-Fi Beats
(10012, 5004, 1078), -- Clair de Lune

-- Playlist 5005 (Road Trip Mix)
(10013, 5005, 1022), -- The Less I Know the Better
(10014, 5005, 1011), -- Jamming
(10015, 5005, 1035), -- Do I Wanna Know?

-- Playlist 5006 (90s Nostalgia)
(10016, 5006, 1033), -- The Real Slim Shady
(10017, 5006, 1019), -- When Doves Cry
(10018, 5006, 1031), -- Go Your Own Way

-- Playlist 5007 (Jazz Lounge)
(10019, 5007, 1007), -- Pharaoh's Dance
(10020, 5007, 1029), -- Rehab
(10021, 5007, 1061), -- Hello, Dolly!

-- Playlist 5008 (Romantic Dinner)
(10022, 5008, 1020), -- Purple Rain
(10023, 5008, 1078), -- Clair de Lune
(10024, 5008, 1047), -- R&B Slow Jams

-- Playlist 5009 (Indie Discoveries)
(10025, 5009, 1041), -- Kyoto
(10026, 5009, 1021), -- Let It Happen
(10027, 5009, 1015), -- Paranoid Android

-- Playlist 5010 (Metal Essentials)
(10028, 5010, 1069), -- Iron Man
(10029, 5010, 1085), -- Master of Puppets
(10030, 5010, 1098), -- Heavy Metal Thunder

-- Continue this pattern for playlists 5011-5100...
(10031, 5011, 1009), -- Classical Masterpiece
(10032, 5011, 1048), -- Air on the G String
(10033, 5012, 1013), -- Summer Pool Party song
(10034, 5013, 1027), -- Electronic Energy
(10035, 5014, 1078), -- Coffee House ambiance
(10036, 5015, 1025), -- Hip Hop Classic
(10037, 5016, 1050), -- Acoustic Session
(10038, 5017, 1017), -- Disco Fever
(10039, 5018, 1012), -- Reggae Roots
(10040, 5019, 1099), -- Film Score

-- Additional entries to reach 100 records
(10041, 5020, 1047),
(10042, 5021, 1063),
(10043, 5022, 1076),
(10044, 5023, 1053),
(10045, 5024, 1027),
(10046, 5025, 1007),
(10047, 5026, 1046),
(10048, 5027, 1087),
(10049, 5028, 1068),
(10050, 5029, 1090),
(10051, 5030, 1014),
(10052, 5031, 1031),
(10053, 5032, 1022),
(10054, 5033, 1064),
(10055, 5034, 1074),
(10056, 5035, 1015),
(10057, 5036, 1078),
(10058, 5037, 1037),
(10059, 5038, 1047),
(10060, 5039, 1085),
(10061, 5040, 1013),
(10062, 5041, 1041),
(10063, 5042, 1069),
(10064, 5043, 1078),
(10065, 5044, 1033),
(10066, 5045, 1090),
(10067, 5046, 1009),
(10068, 5047, 1039),
(10069, 5048, 1078),
(10070, 5049, 1063),
(10071, 5050, 1050),
(10072, 5051, 1007),
(10073, 5052, 1090),
(10074, 5053, 1033),
(10075, 5054, 1012),
(10076, 5055, 1085),
(10077, 5056, 1050),
(10078, 5057, 1087),
(10079, 5058, 1037),
(10080, 5059, 1064),
(10081, 5060, 1061),
(10082, 5061, 1031),
(10083, 5062, 1027),
(10084, 5063, 1017),
(10085, 5064, 1090),
(10086, 5065, 1022),
(10087, 5066, 1087),
(10088, 5067, 1025),
(10089, 5068, 1090),
(10090, 5069, 1063),
(10091, 5070, 1013),
(10092, 5071, 1053),
(10093, 5072, 1076),
(10094, 5073, 1087),
(10095, 5074, 1046),
(10096, 5075, 1090),
(10097, 5076, 1069),
(10098, 5077, 1090),
(10099, 5078, 1063),
(10100, 5079, 1078);


- 1.	List all artists in the 'Jazz' genre along with their album count. (They are 69 artists in the 'Jazz' genre along with their album count.
SELECT 
	ar.name AS artists,
    COUNT(al.id) AS album_count
FROM artists ar
JOIN albums  al
	ON ar.id = al.artist_id
WHERE genre = 'jazz'
GROUP BY ar.name
ORDER BY album_count DESC
;

-- 2.	Find the longest song (by duration) in the database. (IV.Finale (Ode to Joy) is the longest song by duration in the DB)
SELECT 
	title,
    duration_in_sec
FROM songs
ORDER BY duration_in_sec DESC
LIMIT 1
;

-- 3.	Show playlists created in 2023 with their song counts. (They are 66 playlists created in 2023)
SELECT 
	p.id,
    p.title AS playlistName,
    YEAR(p.created_at) = 2023 AS created_in_2023,
    COUNT(ps.song_id) AS song_counts
FROM playlists p
JOIN playlistsongs ps
	ON p.id = ps.playlist_id
WHERE YEAR(p.created_at) = 2023
GROUP BY p.id, p.title
;

-- 4.	Which artist has the most albums? Display the artist name and count. -- 'No artists has the most_albums in this dataset
SELECT 
	ar.name AS artistsName,
    COUNT(al.id) AS most_albums
FROM artists ar
JOIN albums al
	ON ar.id = al.artist_id
GROUP BY al.id, ar.name
ORDER BY most_albums DESC
;

-- 5.	Calculate the average song duration per genre (using Artist genre). (Trip Hop	305.0000

/*Soul/R&B	383.0000
Soul/Jazz	226.5000
Soul	170.0000
Rock/Pop	137.0000
Rock/Blues	259.0000
Rock	292.5000
Reggae	184.0000
R&B/Pop	263.0000
Punk Rock	265.5000
Psychedelic Rock	341.5000
Progressive Rock	397.5000
Post-Rock	615.0000
Post-Punk	210.0000
Pop/Soul	228.0000
Pop/R&B	217.3333
Pop/Folk	233.0000
Pop/Country	225.0000
Pop	294.0000
Jazz/Soul	178.0000
Jazz/Pop	193.0000
Jazz	461.5000
Indie Rock	228.0000
Indie Folk	288.0000
Hip Hop/R&B	382.0000
Hip Hop/Pop	215.0000
Hip Hop	289.6000
Heavy Metal	436.0000
Funk/Rock	424.0000
Folk/Rock	369.0000
Experimental/Electronic	288.0000
Experimental Rock	174.0000
Electronic	358.4000
Country	168.0000
Classical	445.5556
Alternative Rock	263.2500
Alternative Pop	203.5000
*/ -- This are the avg_duration_song per genre

SELECT 
	ar.genre AS artist_genre,
	AVG(s.duration_in_sec) AS avg_song_duration
FROM songs s
JOIN albums al
	ON s.album_id = al.id
JOIN artists ar
	ON al.artist_id = ar.id
GROUP BY ar.genre
;

-- 6.	Find users who have playlists containing songs from more than 3 different genres. (All users playlists contains more than 1 songs from different genres not more than 3)
SELECT 
	u.id AS user_id,
    u.username AS users,
    COUNT(DISTINCT ar.genre) AS genre_count
FROM users u
JOIN playlists p
	ON u.id = p.user_id 
JOIN playlistsongs ps
	ON ps.playlist_id = p.id
JOIN songs s 
	ON ps.song_id = s.id
JOIN albums al
	ON s.album_id = al.id
JOIN artists ar
	ON al.artist_id = ar.id
GROUP BY u.id, u.username
HAVING COUNT(DISTINCT ar.genre) > 3
ORDER BY genre_count DESC
;

-- 7.	List albums with no songs in the database (So 53 Albums has no songs in it)
SELECT 
	al.id AS album_id,
	al.title AS albums,
	s.title AS songs
FROM albums al
LEFT JOIN songs s
	ON al.id = s.album_id
WHERE s.title IS NULL
;

-- 8.	Display "user → playlist → songs" as a hierarchical query (use CTEs).

WITH user_cte AS (
SELECT 
	id AS user_id, 
	username 
FROM users
),
playlist_cte AS (
SELECT 
		id AS playlist_id, 
		user_id, 
		title AS playlist_title 
FROM playlists
),
song_cte AS (
SELECT 
	ps.playlist_id, 
	s.title AS song_title
FROM playlistsongs ps
JOIN songs s 
	ON ps.song_id = s.id
)

SELECT 
  CONCAT('User: ', u.username) AS hierarchy
FROM user_cte u

UNION ALL

SELECT 
  CONCAT('  → Playlist: ', p.playlist_title)
FROM playlist_cte p
JOIN user_cte u 
	ON p.user_id = u.user_id

UNION ALL

SELECT 
  CONCAT('     → Song: ', s.song_title)
FROM song_cte s
JOIN playlist_cte p 
	ON s.playlist_id = p.playlist_id
JOIN user_cte u 
	ON p.user_id = u.user_id

ORDER BY 1;

-- 9.	Find songs that appear in more than 5 playlists (popularity analysis).

SELECT 
	s.title AS SongTitle,
	COUNT(DISTINCT p.id) AS PlaylistCounts
FROM songs s
JOIN playlistsongs ps
	ON s.id = ps.song_id
JOIN playlists p 
	ON p.id = ps.playlist_id
GROUP BY s.id, s.title
HAVING COUNT(DISTINCT p.id) > 5
;

-- 10.	Show artists whose albums all have songs shorter than 4 minutes
SELECT 
    ar.id,
    ar.name AS artists,
    al.title AS albums,
    COUNT(s.id) AS song_count
FROM artists ar
JOIN albums al
    ON ar.id = al.artist_id
JOIN songs s
    ON s.album_id = al.id
GROUP BY ar.id, ar.name, al.title
HAVING MIN(s.duration_in_sec) < 240; -- 240 seconds (4 minutes)
;
*/
