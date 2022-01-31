require 'colorize'

print "Creating seed users...".green

User.destroy_all

user1 = User.create! username: 'thelorddoyle', email: 'dlorddoyle@gmail.com', password: 'chicken', eth_in_wallet: 0.8
user2 = User.create! username: 'lukearthur', email: 'lukearthur@gmail.com', password: 'chicken', eth_in_wallet: 1.8
user3 = User.create! username: 'jordo2017', email: 'jdog@outlook.com', password: 'chicken', eth_in_wallet: 2.4

puts "#{ User.count } users created.".green

############################################

print "Creating seed NFTs...".green

Nft.destroy_all

nft1 = Nft.create!(
    user_id: user1.id,
    mint_season: 1,
    mint_bracket: 1,
    eye_colour: 'Grey',
    hair_style: 'Crop top',
    hair_colour: 'Dark brown',
    skin_colour: 'Pale',
    shorts: 'Green with red band',
    facial_expression: 'Grim',
    body_type: 'Mesomorph',
    handwear: 'None',
    background_colour: 'Caged',
    tattoos: 'None',
    total_fights: 0,
    best_position: 0,
    amount_won: 0,
    image: 'ape1.png',
    fights_won: 2,
    average_position: 14
)

nft2 = Nft.create!(
    user_id: user1.id,
    mint_season: 1,
    mint_bracket: 1,
    eye_colour: 'Green',
    hair_style: 'Dreadlocks',
    hair_colour: 'Black',
    skin_colour: 'Dark',
    shorts: 'Pure white',
    facial_expression: 'Laughing',
    body_type: 'Mesomorph',
    handwear: 'Headband',
    background_colour: 'Gym',
    tattoos: 'Dragon',
    total_fights: 0,
    best_position: 0,
    amount_won: 0,
    image: 'ape2.png',
    fights_won: 3,
    average_position: 12
)

nft3 = Nft.create!(
    user_id: user2.id,
    mint_season: 1,
    mint_bracket: 1,
    eye_colour: 'Green',
    hair_style: 'Dreadlocks',
    hair_colour: 'Black',
    skin_colour: 'Dark',
    shorts: 'Pure white',
    facial_expression: 'Laughing',
    body_type: 'Mesomorph',
    handwear: 'Headband',
    background_colour: 'Gym',
    tattoos: 'Dragon',
    total_fights: 0,
    best_position: 0,
    amount_won: 0,
    image: 'ape3.png',
    fights_won: 1,
    average_position: 2
)

nft4 = Nft.create!(
    user_id: user2.id,
    mint_season: 1,
    mint_bracket: 1,
    eye_colour: 'Green',
    hair_style: 'Dreadlocks',
    hair_colour: 'Black',
    skin_colour: 'Dark',
    shorts: 'Pure white',
    facial_expression: 'Laughing',
    body_type: 'Mesomorph',
    handwear: 'Headband',
    background_colour: 'Gym',
    tattoos: 'Dragon',
    total_fights: 0,
    best_position: 0,
    amount_won: 0,
    image: 'ape4.png',
    fights_won: 3,
    average_position: 12
)

nft5 = Nft.create!(
    user_id: user3.id,
    mint_season: 1,
    mint_bracket: 1,
    eye_colour: 'Green',
    hair_style: 'Dreadlocks',
    hair_colour: 'Black',
    skin_colour: 'Dark',
    shorts: 'Pure white',
    facial_expression: 'Laughing',
    body_type: 'Mesomorph',
    handwear: 'Headband',
    background_colour: 'Gym',
    tattoos: 'Dragon',
    total_fights: 0,
    best_position: 0,
    amount_won: 0,
    image: 'ape5.png',
    fights_won: 3,
    average_position: 12
)

nft6 = Nft.create!(
    user_id: user3.id,
    mint_season: 1,
    mint_bracket: 1,
    eye_colour: 'Green',
    hair_style: 'Dreadlocks',
    hair_colour: 'Black',
    skin_colour: 'Dark',
    shorts: 'Pure white',
    facial_expression: 'Laughing',
    body_type: 'Mesomorph',
    handwear: 'Headband',
    background_colour: 'Gym',
    tattoos: 'Dragon',
    total_fights: 0,
    best_position: 0,
    amount_won: 0,
    image: 'ape6.png',
    fights_won: 3,
    average_position: 12
)

nft7 = Nft.create!(
    mint_season: 1,
    mint_bracket: 1,
    eye_colour: 'Green',
    hair_style: 'Dreadlocks',
    hair_colour: 'Black',
    skin_colour: 'Dark',
    shorts: 'Pure white',
    facial_expression: 'Laughing',
    body_type: 'Mesomorph',
    handwear: 'Headband',
    background_colour: 'Gym',
    tattoos: 'Dragon',
    total_fights: 0,
    best_position: 0,
    amount_won: 0,
    image: 'ape7.png',
    fights_won: 3,
    average_position: 12
)

nft8 = Nft.create!(
    mint_season: 1,
    mint_bracket: 1,
    eye_colour: 'Green',
    hair_style: 'Dreadlocks',
    hair_colour: 'Black',
    skin_colour: 'Dark',
    shorts: 'Pure white',
    facial_expression: 'Laughing',
    body_type: 'Mesomorph',
    handwear: 'Headband',
    background_colour: 'Gym',
    tattoos: 'Dragon',
    total_fights: 0,
    best_position: 0,
    amount_won: 0,
    image: 'ape2.png',
    fights_won: 3,
    average_position: 12
)

nft9 = Nft.create!(
    mint_season: 1,
    mint_bracket: 1,
    eye_colour: 'Green',
    hair_style: 'Dreadlocks',
    hair_colour: 'Black',
    skin_colour: 'Dark',
    shorts: 'Pure white',
    facial_expression: 'Laughing',
    body_type: 'Mesomorph',
    handwear: 'Headband',
    background_colour: 'Gym',
    tattoos: 'Dragon',
    total_fights: 0,
    best_position: 0,
    amount_won: 0,
    image: 'ape1.png',
    fights_won: 3,
    average_position: 12
)

puts "#{ Nft.count } NFT's created.".green