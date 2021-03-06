Rails.application.routes.draw do
  get 'little/Havana'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pictures#index', page: 1
  # get 'gallery' => 'gallery#gallery'
  get 'pictures', to: 'pictures#index', page: 1
  get 'pictures/page/:page', to: 'pictures#index'
  get 'pictures/:id/liked' => 'pictures#liked'

  resources :brickell
  resources :south_beach
  resources :little_havana
  resources :wynwood
  resources :pictures
end
