Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pictures#index'
  # get 'gallery' => 'gallery#gallery'



  resources :neighborhood
  resources :pictures
end
