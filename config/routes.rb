Rails.application.routes.draw do

  root to: 'nfts#home', as: 'home'
  get '/whitepaper' => 'nfts#whitepaper'
  get '/connect' => 'nfts#connect'
  get '/rankings' => 'nfts#rankings'

  get 'nfts/index' => 'nfts#index'
  get 'nfts/show' => 'nfts#show'
  get 'nfts/edit' => 'nfts#edit'
  get 'nfts/mint' => 'nfts#mint'
  get 'nfts/:id/fight' => 'nfts#fight', as: 'fight'

  get 'users/:id/addfunds' => 'users#addfunds', as: 'addfunds'
  post 'users/new' => 'users#new'

  get '/login' => 'session#new' #show login form
  post '/login' => 'session#create' #create session
  delete '/login' => 'session#destroy' #logout link

  resources :users
  resources :nfts
  resources :results

end