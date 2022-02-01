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

eye_colour_options = ['Blue', 'Grey', 'Green', 'Red', 'Black']
hair_style_options = ['Cropped', 'Bald', 'Flowing', 'Cornrows', 'Spiked']
hair_colour_options = ['Brown', 'Black', 'Ginger', 'Blonde', 'White']
skin_colour_options = ['Pale', 'Olive', 'Brown', 'Blue', 'Red']
shorts_options = ['Green', 'Black and white', 'Blue', 'Black', 'Red']
facial_expression_options = ['Grim', 'Smiling', 'Laughing', 'Bored', 'Evil']
body_type_options = ['Ectomorph', 'Endomorph', 'Mesomorph']
handwear_options = ['Bare-Knuckle Gloves', 'None', 'Knuckle-dusters', 'Boxing Gloves', 'Wraps']
background_colour_options = ['Blue', 'Red', 'Cage', 'Press Conference', 'Gym']
tattoos_options = ['None', 'Dragon', 'Celtic', 'Tribal', 'Kids Names']

100.times do |i|

    nftName = 'nft'+(i+1).to_s
    imageName = 'fighter' + (rand(1..32)).to_s + '.png'

    nftName = Nft.create!
    nftName.user_id = nil
    nftName.mint_season = rand(1..3)
    nftName.mint_bracket = rand(1..10)
    nftName.eye_colour = eye_colour_options.sample
    nftName.hair_style = hair_style_options.sample
    nftName.hair_colour = hair_colour_options.sample
    nftName.skin_colour = skin_colour_options.sample
    nftName.shorts = shorts_options.sample
    nftName.facial_expression = facial_expression_options.sample
    nftName.body_type = body_type_options.sample
    nftName.handwear = handwear_options.sample
    nftName.background_colour = background_colour_options.sample
    nftName.tattoos = tattoos_options.sample
    nftName.image = imageName
    nftName.total_fights = rand(0..75)
    nftName.best_position = rand(1..32)
    nftName.amount_won = rand(0.01..2.34).round(2)
    nftName.fights_won = rand(0..36)
    nftName.average_position = rand(4..28)

    nftName.save

end

puts "#{ Nft.count } NFT's created.".green