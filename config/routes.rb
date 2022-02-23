Rails.application.routes.draw do

  root to: 'nfts#home', as: 'home'
  get '/whitepaper' => 'nfts#whitepaper'
  get '/connect' => 'nfts#connect'
  get '/rankings' => 'nfts#rankings'
  get '/roadmap' => 'nfts#roadmap'

  get 'nfts/index' => 'nfts#index'
  get 'nfts/show' => 'nfts#show'
  get 'nfts/edit' => 'nfts#edit'
  get 'nfts/mint' => 'nfts#mint'
  get 'nfts/:id/fight' => 'nfts#fight', as: 'fight'
  get 'nfts/tournament' => 'nfts#tournament'

  get 'tournaments/:id/show' => 'tournaments#show', as: 'tournament'
  get 'tournaments/index' => 'tournaments#index'
  get 'tournament/new' => 'tournaments#new'

  get 'users/:id/addfunds' => 'users#addfunds', as: 'addfunds'
  post 'users/new' => 'users#new'

  get '/login' => 'session#new' #show login form
  post '/login' => 'session#create' #create session
  delete '/login' => 'session#destroy' #logout link

  resources :users
  resources :nfts
  resources :results
  resources :tournaments

end