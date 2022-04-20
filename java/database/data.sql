/* Setup for users. Name is username and password. */
INSERT INTO users(user_id, username, password_hash, role) VALUES 
(100, 'jay', '$2a$10$V86opwE0drGKcLWfrNoVLuPnkz1swOjo/aBA4gca2dWY641cPxxSu', 'ROLE_USER'),
(101, 'tye', '$2a$10$aESI2fEzX1yXZ7SyvGHqaOXksJ9gesx4K/fzlFdsihsVJDKtdB3KG', 'ROLE_PREMIUM'),
(102, 'jeremy', '$2a$10$aESI2fEzX1yXZ7SyvGHqaOXksJ9gesx4K/fzlFdsihsVJDKtdB3KG', 'ROLE_USER'),
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
(102, 'Dookie', 'Green Day', 'Punk Rock', 2374, 5, 'https://upload.wikimedia.org/wikipedia/en/thumb/4/4b/Green_Day_-_Dookie_cover.jpg/220px-Green_Day_-_Dookie_cover.jpg'),
(102, 'Kicking Against the Pricks', 'Nick Cave & the Bad Seeds', 'Post Punk', 2728, 4, 'https://upload.wikimedia.org/wikipedia/en/e/e5/Kickingagainstthepricks.jpeg'),
(102, 'Designing a Nervous Breakdown', 'The Anniversary', 'Indie Rock', 2399, 3, 'https://upload.wikimedia.org/wikipedia/en/8/84/Designing_a_Nervous_Breakdown_album_cover.jpg'),
(100, 'Can I Heat?', 'Cosmic Boy', 'Rap', 1600, 5, 'https://hiphopkr.com/wp-content/uploads/2020/01/cosmic-boy-can-i-heat.jpg'),
(100, 'Nectar', 'Joji', 'Emotional', 3180, 5, 'https://dailytargum.imgix.net/images/55c8ea14-b88c-46a2-9b39-23b5b2d325f8.png'),
(100, 'Starboy', 'The Weeknd', 'Pop', 4140, 4, 'https://m.media-amazon.com/images/I/819e05qxPEL._SL1500_.jpg'),
(100, 'GINGER', 'BROCKHAMPTON', 'Rap', 2640, 4, 'https://i.pinimg.com/originals/3e/67/21/3e6721d83478bb63f2fd0ddce5e0b9bc.jpg'),
(100, 'DAMN','Kendrick Lamar', 'Rap', 3300, 5, 'https://m.media-amazon.com/images/I/71FvMBLmheL._SL1200_.jpg'),
(104, 'The End Is Not the End', 'House of Heroes', 'Rock', 3300, 5, 'https://m.media-amazon.com/images/I/91eXiiyvPFL._SL1500_.jpg'),
(104, 'Californication', 'Red Hot Chili Peppers', 'Alt Rock', 2380, 5, 'https://m.media-amazon.com/images/I/81x1drakpHS._SL1500_.jpg'),
(104, 'Led Zeppelin IV', 'Led Zeppelin', 'Classic Rock', 3600, 4, 'https://static.metacritic.com/images/products/music/1/e27fcd31b1e3738b78e9ea34a9663f57.jpg'),
(104, '?', 'XXXTENTACION', 'Rap', 2400, 4, 'https://images.genius.com/0152d9262bbd6ca0edebe7013285a1d8.640x640x1.jpg');

/* Setup for collections. */
INSERT INTO collections(collection_user_id, is_public, collection_name)
VALUES 
(101, 'true', 'Tyes Public Collection'),
(103, 'true', 'Virginias Public Collection');