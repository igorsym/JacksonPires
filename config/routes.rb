Rails.application.routes.draw do
  resources :moderadors
  resources :avaliacaos
  resources :participacaos
  resources :solicitacaos
  resources :convites
  resources :banidos
  resources :denuncia
  resources :eventos
  resources :usuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
