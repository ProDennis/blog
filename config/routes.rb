Rails.application.routes.draw do
  root 'home#index'

  #Routes of articles
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
