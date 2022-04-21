/* Setup for users. Name is username and password. */
INSERT INTO users(user_id, username, password_hash, role) VALUES 
(100, 'jay', '$2a$10$V86opwE0drGKcLWfrNoVLuPnkz1swOjo/aBA4gca2dWY641cPxxSu', 'ROLE_USER'),
(101, 'tye', '$2a$10$aESI2fEzX1yXZ7SyvGHqaOXksJ9gesx4K/fzlFdsihsVJDKtdB3KG', 'ROLE_PREMIUM'),
(102, 'jeremy', '$2a$10$aESI2fEzX1yXZ7SyvGHqaOXksJ9gesx4K/fzlFdsihsVJDKtdB3KG', 'ROLE_PREMIUM'),
(103, 'virginia', '$2a$10$hU7sWWGKojkLTSActaCEEuRzXytSXGsnYP0huieq0tGrjQ1vnRROy', 'ROLE_PREMIUM'),
(104, 'austin', '$2a$10$zXZPTbVMGrGOaaLBWZa00e.30LMJWrJ9iuyzh0XISPeQaGSDCMNaO', 'ROLE_USER');

/* Setup for records. */
INSERT INTO records(record_user_id, record_title, record_artist, record_genre, record_length_in_sec, record_user_rating, record_art_url) VALUES 
(101, 'Dark Side Of The Moon', 'Pink Floyd', 'Psychedelic Rock', 2585, 5, 'https://i.discogs.com/mwWMy1jLJhX7BGUigOAzbMQjmN6y2a9ppdzulDAUYSU/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE4NzMw/MTMtMTQ3MTEwMDM4/MS0zMDIyLmpwZWc.jpeg'),
(101, 'Plastic Beach', 'Gorillaz', 'Experimental Rap', 3600, 5, 'https://i.discogs.com/MuLrvRctIA1_1pS9REPh1l9FnwmWY2iDPAMNtdthEl0/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI0NDA4/MTgtMTQwMTM3MTA0/MC0yNjI0LmpwZWc.jpeg'),
(101, 'The Devil And God Are Raging Inside Me', 'Brand New', 'Rock', 3291, 4, 'https://upload.wikimedia.org/wikipedia/en/6/6e/Thedevilandgodareraginginsideme.jpg'),
(101, 'Kid A', 'Radiohead', 'Alternative Rock', 3000, 5, 'https://i.discogs.com/_zg0Us0N_anqCz9hJvFGeRK2v69eDDCxQnHkd7RcgTk/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTc0NzQz/LTE1NDg5MDI2NDMt/Mzg2OS5qcGVn.jpeg'),
(103, 'Lemonade', 'Beyonce', 'Funk/Soul', 3600, 5, 'https://i.discogs.com/ZKlVmncrWPj7inH8QlfToVET7Y3ZNRNV6x979KhFEUM/rs:fit/g:sm/q:90/h:594/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTg0ODY3/MTQtMTQ3NzU3NTAx/MC02OTY5LmpwZWc.jpeg'),
(103, 'Rumours', 'Fleetwood Mac', 'Pop Rock', 2340, 4, 'https://i.discogs.com/0RwbFkhFsRb6qNlIqNCR2EjpmrsBOlb8NFwI431feKg/rs:fit/g:sm/q:90/h:576/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzNTUy/ODM2LTE2NDQxNDk2/NDEtODM4OS5qcGVn.jpeg'),
(103, 'My Beautiful Twisted Fantasy', 'Kanye West', 'Hip Hop', 4120, 5, 'https://i.discogs.com/r6S_JASQEvRM9DmFL0ltzIuYsKX0AAOBPebbJ6sHoQc/rs:fit/g:sm/q:90/h:500/w:500/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI1NjA2/NTEtMTI5MDQ3NTM1/OS5qcGVn.jpeg'),
(103, 'I Love You, Honeybear', 'Father John Misty', 'Folk', 2700, 5, 'https://i.discogs.com/eWM_-z0UAtUXZAbj_LM3XpywpVbsuqduE4hQb_LCkmM/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTY2MzYy/OTQtMTU2MjYyMzc2/OC05MjQzLmpwZWc.jpeg'),
(102, 'Flood', 'They Might be Giants', 'Alternative Rock', 2604, 4, 'https://upload.wikimedia.org/wikipedia/en/3/34/Flood_album_cover.jpg'),
(102, 'On the Beach', 'Neil Young', 'Folk Rock', 2380, 4, 'https://upload.wikimedia.org/wikipedia/en/3/34/Neil_Young_-_On_the_Beach.png'),
(102, 'Dookie', 'Green Day', 'Punk Rock', 2374, 5, 'https://m.media-amazon.com/images/I/91kny7EUh5L._SL1425_.jpg'),
(102, 'Kicking Against the Pricks', 'Nick Cave & the Bad Seeds', 'Post Punk', 2728, 4, 'https://upload.wikimedia.org/wikipedia/en/e/e5/Kickingagainstthepricks.jpeg'),
(102, 'Designing a Nervous Breakdown', 'The Anniversary', 'Indie Rock', 2399, 3, 'https://upload.wikimedia.org/wikipedia/en/8/84/Designing_a_Nervous_Breakdown_album_cover.jpg'),
(102, 'Rubberneck', 'Toadies', 'Grunge', 2181, 4, 'https://upload.wikimedia.org/wikipedia/en/3/3c/Rubberneck_album_cover.jpg'),
(102, 'Blood on the Tracks', 'Bob Dylan', 'Folk Rock', 3102, 5, 'https://upload.wikimedia.org/wikipedia/en/thumb/f/fa/Bob_Dylan_-_Blood_on_the_Tracks.jpg/220px-Bob_Dylan_-_Blood_on_the_Tracks.jpg'),
(102, 'Live at the Old Quarter, Houston, Texas', 'Townes Van Zandt', 'Folk', 5560, 4, 'https://m.media-amazon.com/images/I/81wVp+rgpHL._SY355_.jpg'),
(102, 'Emmaar', 'Tinariwen', 'African Blues, World', 3710, 3, 'https://upload.wikimedia.org/wikipedia/en/a/af/Tinariwen_Emmaar.jpg'),
(102, 'I, Jonathan', 'Jonathan Richman', 'Americana', 2251, 3, 'https://media.pitchfork.com/photos/5ad4bfdaef431113fa5a0c85/1:1/w_600/Jonathan%20Richman-%20I,%20Jonathan.jpg'),
(102, 'All Things Shall Pass', 'George Harrison', 'Folk Rock', 6360, 4, 'https://upload.wikimedia.org/wikipedia/en/a/a1/All_Things_Must_Pass_1970_cover.jpg'),
(102, 'Sweetheart of the Rodeo', 'The Byrds', 'Country Rock', 1955, 4, 'https://upload.wikimedia.org/wikipedia/en/e/ed/TheByrdsSweetheartoftheRodeo.jpg'),
(102, 'Mexican Coke', 'Denney and The Jets', 'Indie Rock', 2399, 3, 'https://f4.bcbits.com/img/a0359381746_10.jpg'),
(102, 'Q: Are We Not Men? A: We Are Devo!', 'Devo', 'New Wave', 2064, 3, 'https://upload.wikimedia.org/wikipedia/en/5/54/Are_We_Not_Men_We_Are_Devo%21.jpg'),
(100, 'Can I Heat?', 'Cosmic Boy', 'Rap', 1600, 5, 'https://hiphopkr.com/wp-content/uploads/2020/01/cosmic-boy-can-i-heat.jpg'),
(100, 'Nectar', 'Joji', 'Emotional', 3180, 5, 'https://dailytargum.imgix.net/images/55c8ea14-b88c-46a2-9b39-23b5b2d325f8.png'),
(100, 'Starboy', 'The Weeknd', 'Pop', 4140, 4, 'https://m.media-amazon.com/images/I/819e05qxPEL._SL1500_.jpg'),
(100, 'GINGER', 'BROCKHAMPTON', 'Rap', 2640, 4, 'https://i.pinimg.com/originals/3e/67/21/3e6721d83478bb63f2fd0ddce5e0b9bc.jpg'),
(100, 'DAMN','Kendrick Lamar', 'Rap', 3300, 5, 'https://m.media-amazon.com/images/I/71FvMBLmheL._SL1200_.jpg'),
(104, 'The End Is Not the End', 'House of Heroes', 'Rock', 3300, 5, 'https://m.media-amazon.com/images/I/91eXiiyvPFL._SL1500_.jpg'),
(104, 'Californication', 'Red Hot Chili Peppers', 'Alt Rock', 2380, 5, 'https://m.media-amazon.com/images/I/81x1drakpHS._SL1500_.jpg'),
(104, 'Led Zeppelin IV', 'Led Zeppelin', 'Classic Rock', 3600, 4, 'https://static.metacritic.com/images/products/music/1/e27fcd31b1e3738b78e9ea34a9663f57.jpg'),
(104, '?', 'XXXTENTACION', 'Rap', 2400, 4, 'https://images.genius.com/0152d9262bbd6ca0edebe7013285a1d8.640x640x1.jpg');

-- Premium User
INSERT INTO records((record_user_id, record_title, record_artist, record_genre, record_length_in_sec, record_user_rating, record_art_url) VALUES
(),
					
					
-- Standard User					
INSERT INTO records(record_user_id, record_title, record_artist, record_genre, record_length_in_sec, record_user_rating, record_art_url) VALUES
(100, 'Black Cab', 'Higher Brothers', 'Hip-Hop', 3253, 4, 'https://i.discogs.com/SpID7kBFELkbiQovAFnwP-9EQTbhpd3fH3GZyqg3V7U/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExOTI5/ODE3LTE1MjQ5NDIz/MjgtNDY1My5qcGVn.jpeg'),
(100, 'BALLADS1', 'Joji', '	Electronic, Hip Hop, Rock, Funk / Soul, Pop', 2111, 4, 'https://i.discogs.com/Jh6Kf3_Yl2nqraNNPGcHWqdSHQ6KunAAy7DCbOoSXS0/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEyNzEw/NTkxLTE1NDA0OTc3/MTEtNjA2OC5qcGVn.jpeg'),
(100, 'Gaussian', 'Youra', 'Indie, R&B, soul, electronic', 1140, 4, 'https://i.discogs.com/PllYSq3fXNujY_4wRFJcfzTPtDFowcsPoxdKDmABBqA/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE4NDI3/MTE3LTE2MTkxOTc1/MjUtNDUwMi5wbmc.jpeg'),
(100, 'Love Language', 'UMI', 'R&B/Soul', 727, 4, 'https://i.discogs.com/UzaaNKnYAco3TT773_SMqHuMbNeGfCWZklZL1e74aC4/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE2MDA4/NjIyLTE2MDE4MDQw/MTYtMjI3Ny5qcGVn.jpeg'),
(100, 'Shang-Chi and The Legend of The Ten Rings', 'Various Artists', 'Hip-Hop, Stage & Screen', 3601, 4, 'https://i.discogs.com/vUpk-CpjaqmFe2qK3-rFRXGmcVpdKF11haBIWRNA0jU/rs:fit/g:sm/q:90/h:599/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIwMTgx/OTAxLTE2MzEyODIz/NTUtMzMyMS5qcGVn.jpeg'),
(100, 'ALL OUT', 'K/DA', 'K-pop, Dance-pop', 978, 5, 'https://i.discogs.com/x5thIz1KkPplA2Ak6a4aIEecPEmXYLXGH-mYgkicEd0/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE2MjQ0/NTM2LTE2MDU4OTMw/MjEtMjYyNi5qcGVn.jpeg'),
(100, 'Modal Soul', 'Nujabes', 'Electronic, Hip-Hop, Jazz', 3780, 5, 'https://i.discogs.com/h_teN6QC6tVEa2K6ZnEjTrqSUHTmYqVkaA1FVL5Yaik/rs:fit/g:sm/q:90/h:530/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI2MzY5/OTYtMTU2Mzk0MjA0/NS0yMjM0LmpwZWc.jpeg'),
(100, 'ANTI', 'Rihanna', 'Hip-Hop, Pop', 3058, 4, 'https://i.discogs.com/pNLZp8KWvBloPl1d9msktWcvdUTEP6JyrLd5EqLTGTA/rs:fit/g:sm/q:90/h:507/w:450/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTgwNzc5/OTAtMTQ1NDcxMDgw/OC0zODA0LmpwZWc.jpeg'),
(100, 'Arcane League of Legends', 'Various Artists', 'Hip-Hop, Rock, Pop, Stage & Screen', 2220, 5, 'https://i.discogs.com/b3fDoY1c1bLBDXFP4STjiR9YIN_JNkKyRpv1JcrSRSY/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIxMDUy/NzMyLTE2Mzc0MDM3/NDMtNjg1Mi5qcGVn.jpeg'),
(100, 'FIRE ON MARZZ', 'BENEE', 'Funk/Soul, Pop', 1258, 4, 'https://i.discogs.com/NapVLrsKyXZKid0K-EmTxTDS9DJUkBXwe2yGuMG3zY4/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE0NDIx/MzQ5LTE1NzQxOTA1/MjctMjAyMi5qcGVn.jpeg'),
(100, 'Worlds', 'Porter Robinson', 'Electronic', 3474, 5, 'https://i.discogs.com/3jbfXPozuZ0CHKvr7TWgciWzb-qYdTfkycvSPr_aQVk/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTU5ODc1/OTAtMTQwODE2MjU2/My01NTEwLmpwZWc.jpeg'),
(100, 'thank u, next', 'Ariana Grande', 'Hip-Hop, Funk/Soul, Pop', 2470, 4, 'https://i.discogs.com/vg0yxrj9eVgR3GsSNM8jlP2971a6Nkx0_YCSxgdgl6U/rs:fit/g:sm/q:90/h:529/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzMTc4/MTkwLTE1NDk3NTM3/MzctNjAzNC5wbmc.jpeg'),
(100, 'The Perfect Red Velvet', 'Red Velvet', 'K-Pop', 2496, 4, 'https://i.discogs.com/_OcTsiO-SByZ6Qh3VZ7zcEqe3MBlWebgTvVCOCnUtsw/rs:fit/g:sm/q:90/h:520/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEyOTEy/MzgzLTE1NDQzNzg4/OTUtNDczMC5qcGVn.jpeg'),
(100, 'NeON', 'Unlimits', 'J-Rock, J-Pop', 2834, 4, 'https://i.discogs.com/PU74oJcnu9QIP8-YkonOLr9zk-ysMdwv8N86--BvOoY/rs:fit/g:sm/q:90/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ5NjM4/MDYtMTM4MDc0ODQ1/Mi01MDU2LmpwZWc.jpeg'),
(100, 'Planet Her', 'Doja Cat', 'Hip Hop, Funk/Soul, Pop', 2646, 4, 'https://i.discogs.com/UCAqYwgLfImPHgU0f8J6vZn1io4jvSr6hRlBctH9dUg/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE5MjY2/NzQ4LTE2Mzk4NjUx/MDMtMTY3My5qcGVn.jpeg'),
(100, 'Her', 'DPR LIVE', 'Hip-Hop, Rap', 737, 4, 'https://images.genius.com/70a533447f7fbba9c6001369e7e74abf.999x999x1.jpg'),
(100, 'ASTROWORLD', 'Travis Scott', 'Hip-Hop', 3522, 4, 'https://i.discogs.com/IVTJPd80XDybfPLVKOC-rROuf5ymTGgb4knFHupVTLw/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEyMzU4/OTcxLTE1OTc4NzQ1/OTEtOTU2My5qcGVn.jpeg'),
(100, 'Black Panther The Album', 'Various Artists', 'Hip-Hop, Rap, Funk/Soul, Stage & Screen', 2958, 5, 'https://i.discogs.com/reRQkduSI_K5gBrFSJyLjtwyVvQWd0ckTxgC4JxVW6Q/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExNTUy/Mzc1LTE1MTgzNzEx/ODEtOTg5Mi5qcGVn.jpeg'),
(100, 'After Hours', 'The Weeknd', 'Electronic, Hip Hop, Funk/Soul, Pop', 3377, 4, 'https://i.discogs.com/esac3iVLAarhOBGidnYcm3dnxyW4BI5-tmTqVi5bMzc/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE0OTU4/NTAwLTE1ODUzOTIx/ODAtNDI3NS5qcGVn.jpeg');
/* Setup for collections. */
INSERT INTO collections(collection_user_id, is_public, collection_name)
VALUES 
(101, 'true', 'Tyes Public Collection'),
(103, 'true', 'Virginias Public Collection');