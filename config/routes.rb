Rails.application.routes.draw do
  
  root 'home#index'
  get 'about' ,to: "home#about"
  get 'search' , to: "home#lookup"
  post 'search' => 'home#lookup'
  
end
