Rails.application.routes.draw do

  resources :users
  resources 'contacts', only: [:new, :create]
  resources :contacts, :courts, :meetings, :trainers, :shops, :offers, :matchs, :players
  resources :users do
    resource :profile
  end

  root 'pages#home'

  get '/about' => 'pages#about'
  get '/levels' => 'pages#levels'
  get '/clubs' => 'pages#clubs'
  get '/rules' => 'pages#rules'
#  get '/trainers' => 'pages#trainers'
  get 'players' => 'users#index'



  get 'courts/new'
  get 'courts/create'
  get 'courts/show'
  get 'courts/edit'
  get 'courts/index'
  get 'courts/update'
  get 'courts/destroy'

  get 'groups/index'
  get 'groups/new'
  get 'groups/create'
  get 'groups/show'
  get 'groups/edit'
  get 'groups/update'
  get 'groups/destroy'
  
  get 'invitations/index'
  get 'invitations/show'
  get 'invitations/edit'
  get 'invitations/update'
  get 'invitations/new'
  get 'invitations/destroy'

  get 'trainers/new'
  get 'trainers/create'
  get 'trainers/show'
  get 'trainers/edit'
  get 'trainers/index'
  get 'trainers/update'
  get 'trainers/destroy'

  get 'offers/new'
  get 'offers/create'
  get 'offers/show'
  get 'offers/edit'
  get 'offers/index'
  get 'offers/update'
  get 'offers/destroy'

  get 'players/new'
  get 'players/create'
  get 'players/show'
  get 'players/edit'
  get 'players/index'
  get 'players/update'
  get 'players/destroy'

  get 'matchs/new'
  get 'matchs/create'
  get 'matchs/show'
  get 'matchs/edit'
  get 'matchs/index'
  get 'matchs/update'
  get 'matchs/destroy'

  get 'meetings/new'
  get 'meetings/create'
  get 'meetings/show'
  get 'meetings/edit'
  get 'meetings/index'
  get 'meetings/update'
  get 'meetings/destroy'
 
  get 'shops/new'
  get 'shops/create'
  get 'shops/show'
  get 'shops/edit'
  get 'shops/update'
  get 'shops/index'
  get 'shops/destroy'


  devise_for :users, controllers: { registrations: 'users/registrations' }
  

  
end
