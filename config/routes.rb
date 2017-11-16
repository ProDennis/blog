Rails.application.routes.draw do
  get 'articles/index'

  get 'articles/new'

  get 'articles/edit'

  get 'home/index'

  root 'home#index'

  #Routes of articles
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
