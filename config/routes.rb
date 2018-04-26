Rails.application.routes.draw do
  
  get 'show_page/index'

  resources :cryptos
  devise_for :users
  get 'back', to:'home/home'
  root 'home#home'
  get 'me' , to: 'home#index'
  get 'aboutme', to: 'home#aboutme'
  
  get 'about' ,to: "home#about"
  get 'search' , to: "home#lookup"
  post 'search' => 'home#lookup'
  
end
