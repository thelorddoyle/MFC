# Metaverse Fighting Championship

> The first direct ETH win NFT game

![The San Juan Mountains are beautiful!](https://metaverse-fc.herokuapp.com/assets/MFC_PressConference_High-db7c77dc93d1c9629e4f674513b31c269b906414ec95d9f661208552fbd853b7.jpg)


## Visit the site:
[Click here](https://metaverse-fc.herokuapp.com/)

## How it works

MFC (Metaverse Fighting Championship) is an NFT-fighting-game emulator. It is not associated or connected to any smart contracts but allows a player to sign up, add pretend Ethereum to their wallet and mint NFT fighters. 

Once minted, they can either **fight** or compete in a **tournament**.

![Tale of the tape](https://metaverse-fc.herokuapp.com/assets/tale-of-the-tape-0dc09d04d7ddfe8e3107a0455231835b4e85a9532ee9c57b1e5ca9271c3efa5f.jpg)

A 'fight' is a 50/50 chance and is represented via text through early, mid and late game commentary. An individual NFT's fight history is stored on their unique page along with other relevant stats.

When an NFT fights against another, the user bets 0.2 ETH (the in-game currency). If your NFT is victorious you win 0.4 ETH per fight.

When an NFT subscribes to a tournament (an individual user can subscribe a maximum of 2 unique NFT's per tournament) they bet 0.2 ETH per fighter and win the Prize Pool. Tournaments can be re-watched on the User Profile or Tournaments Page.

## Steps to test the game & website<br><br>

> <br>**Seed Users** <br><br>
> Email: jdog@outlook.com <br>Password: chicken<br><br>
> Email: dlorddoyle@gmail.com <br>Password: chicken <br><br>Email: lukearthur@gmail.com <br>Password: chicken<br>
<br>

<br>

1. [Create a user](https://metaverse-fc.herokuapp.com/users/new)
2. Add a PFP (profile image) for the best immersion
3. Along the top bar you will notice your navigation bar has changed and you can access your profile via clicking on your username in the top right of the screen.
4. When in your profile, ensure you have added some in-game currency (ETH).
5. Once you have some ETH in your wallet, please ['mint' (buy)](https://metaverse-fc.herokuapp.com/nfts/mint) several NFT fighters.
6. Once you have minted several fighters, you can test out the **Fight** feature. In your profile you will see a list of the NFTs you own. Click the red 'fight' button on the user profile page or alternatively you can find a red fight button on any NFT's show page (if you own that NFT).
7. You will notice that after a fight, the user & the NFT's fight stats update as well as the ETH in their wallet.
8. After you have fought a few times, check out the Tournament function. Visit the [Tournament](https://metaverse-fc.herokuapp.com/tournaments/index) page.
9. While here, why not watch a few previous tournaments to see what they are like before diving in yourself!
10. There is a limit on the number of NFTs a user can enrol in each tournament (2). As such, you may need to use a seed user to quickly login and add the remaining tournament players.
11. Add 4 players in to the tournament, and enjoy!
12. As your NFTs fight and compete, they will go up the [Rankings](https://metaverse-fc.herokuapp.com/rankings) 
13. You will also be able to see each individual NFTs performance stats in their NFT page (accessable via almost any image of an NFT on the site, where you can click it to visit their profile). If it is your NFT, you will see highlighted red or green if they won you ETH that fight!

## Game & NFT Samples

### The Fighters

<img src="https://metaverse-fc.herokuapp.com/assets/card5-a084f5271d1b3e014a457e364c8257004ffab38f00fa418da52445a19ef3b2e1.jpg" alt="drawing" width="200"/>
<img src="https://metaverse-fc.herokuapp.com/assets/card2-b0c24c104e200645c7d9fdb1309e723db05b82e49c90ad418dbddc7b0306124b.jpg" alt="drawing" width="200"/>
<img src="https://metaverse-fc.herokuapp.com/assets/card1-507bbb78db4548dd4642743e7cc3e2187928e1d20fe588c6a73c2e0a8a6c24b5.jpg" alt="drawing" width="200"/>
<img src="https://metaverse-fc.herokuapp.com/assets/card4-99343bd607c538f4c7a248d1efee7a2455cc4dfa9b33edd404997d1de1e4b825.jpg" alt="drawing" width="200"/>

### The Fight

![Fight](https://i.ibb.co/f8f7hRd/Screen-Shot-2022-02-06-at-9-50-07-am.png)

### The Tournament

![Tournament](https://i.ibb.co/s9dyYLs/Screen-Shot-2022-02-06-at-9-52-42-am.png)

## FAQs

*What is an NFT?*<br>

A non-fungible token is a unit of data stored on a blockchain, that certifies a digital asset to be unique and therefore not interchangeable. It means that NFTs are unique. They cannot be duplicated or replaced - only one token can exist. Ethereum allows users to easily store, create and send NFT tokens, therefore the Ethereum network is the market leader.
NFTs can be used to represent items such as photos, videos, audio, and other types of digital files. NFTs are frequently used to sell a wide range of virtual collectibles, including virtual trading cards, music, digital images, video clips, and even virtual real estate in the metaverse.
NFTs bring a new and exciting dimension to games with the opportunity to earn, buy, trade and sell in game assets. The future of gaming lies within web3 and the Metverse Fighting Championship aims to gamify the ownership of an NFT through an MMA game that provides ethererum as prize money allowing holders to generate revenue for ownership.

*How do I buy an NFT in the game?* <br>

In the NFT space, when you 'buy' one before it is generated uniquely and randomly you go through a process called 'minting'. This is effectively where the NFT is smilutaneously created and assigned to you as the owner. That is why we have called minting on the site. Simply click ['Mint'](https://metaverse-fc.herokuapp.com/nfts/mint) to buy one after you have added funds to your wallet.


## Future Goals

- Get the betting to work on the tournament
- Make it so you can choose which NFT joins a tournament rather than it be randomised
- Build a more intelligent tournament system, where you can choose between 4, 16 and 32-person tournaments.
- Rather than the bet being 0.2 ETH hard-coded, make it so the users can choose their amount to bet and submit their fight or tournament to a live pool that other players can choose to join or not.
- Move the project over to React and Mongo DB and actually connect it to a smart contract and release the project.

## Technologies Used

- Ruby
- Ruby on Rails
- JavaScript

## Known Bugs

- When you try to add an NFT in to a tournament and that NFT is already in the tournament it just refreshes the page when it should show a warning
- It is NOT mobile-optimised. This may sound counter to the known movement towards mobile-first web development, but NFT & crypto sites are almost exclusively used on desktop due to the incompatability & security of mobile phones and crypto wallets (where you store your crypto coins & NFTs). **However** I do intend to make the site at least appear correctly on mobile.
- The site lacks security and user / ownership checks everywhere it is required. This problem needs to be analysed and is a large job.
- Not all images are hosted online.