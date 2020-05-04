Rails.application.routes.draw do
  resources :coffees, except: [:new, :edit]
  resources :coffee_shops, except: [:new, :edit]
  resources :customers, only: [:index, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
