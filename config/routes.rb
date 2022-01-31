Rails.application.routes.draw do

  root to: 'nfts#home', as: 'home'
  get '/whitepaper' => 'nfts#whitepaper'
  get '/connect' => 'nfts#connect'
  get '/rankings' => 'nfts#rankings'

  get 'nfts/index' => 'nfts#index'
  get 'nfts/show' => 'nfts#show'
  get 'nfts/edit' => 'nfts#edit'

  get '/login' => 'session#new' #show login form
  post '/login' => 'session#create' #create session
  delete '/login' => 'session#destroy' #logout link

  resources :users
  resources :nfts

end
