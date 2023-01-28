Rails.application.routes.draw do
  
  root to: "homes#top"
  devise_for :users,controllers: {
    sessions: 'devise/sessions',
    registrations: 'devise/registrations'
  }
  
  

  get "/home/about" => "homes#about"
  get "/users" => "users#index"
  
  resources :users
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end














