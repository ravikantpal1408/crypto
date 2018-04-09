Rails.application.routes.draw do
  
  devise_for :users
  root 'home#index'
  get 'about' ,to: "home#about"
  get 'search' , to: "home#lookup"
  post 'search' => 'home#lookup'
  
end
