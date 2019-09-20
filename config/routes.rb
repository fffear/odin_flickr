Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/home", to: 'static_pages#home', as: 'home'
  root "static_pages#home"
end
