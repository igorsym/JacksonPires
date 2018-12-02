Rails.application.routes.draw do

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'index', to: 'application#_navigation', as: 'index'
  get 'perfil' => 'users#perfil'
  get 'edicao' => 'users#edicao'
  get 'exclusao' => 'users#exclusao'




  resources :sessions
  resources :moderators
  resources :ratings
  resources :participations
  resources :requests
  resources :invitations
  resources :bans
  resources :reports
  resources :events
  resources :users
  resources :application
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
