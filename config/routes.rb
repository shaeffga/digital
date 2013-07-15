Digital::Application.routes.draw do
  devise_for :users

  devise_scope :user do
    root to: "devise/registrations#new"
  end
  
  resources :home

  resources :quotes do 
    member do
      post 'create'
    end
  end

  resources :help_desks 

  resources :media_players
  
  resources :services
  
  resources :hourly_services

end
