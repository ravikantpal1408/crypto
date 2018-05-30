Rails.application.routes.draw do
  
  get 'projects' , to: "home#project"
  get 'blog/index'

  get 'show_page/index'
  resources :blogs
  resources :cryptos
  devise_for :users
  get 'back', to:'home/home'
  root 'home#home'
  get 'me' , to: 'home#index'
  get 'aboutme', to: 'home#aboutme'
  
  get 'about' ,to: "home#about"
  get 'search' , to: "home#lookup"
  post 'search' => 'home#lookup'
  
  
  #WebServices Routes
  get 'webservices/getCity'
  get 'webservices/getPlaces'
  #post 'webservices/getCity'
  get 'webservices/getMyLoc'
  get 'myblogs' , to: 'home#blogspage'
  get 'webservices/getselectedblog'
  #get 'testblog',to: 'webservices#getmyblog'
  get 'webservices/checkRegisteredVehicle'
end
