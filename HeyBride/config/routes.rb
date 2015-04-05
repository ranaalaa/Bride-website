Rails.application.routes.draw do
  devise_for :views
  devise_for :users,controllers: {omniauth_callbacks: "omniauth_callbacks"}
 
 devise_scope :user do
  authenticated :user do
    root 'welcome#HomePage', as: :authenticated_root
  end
   unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end
end

  resources :vendors do
    resources :packages
    resources :samples
    resources :comments
    resources :brands
  
    collection do
      get 'indexHairdressers'
      get 'indexMakeup'
      get 'indexDresses'
      get 'indexPhotographers'
      get 'indexSpa'
      get 'indexSuites'
<<<<<<< HEAD
      get 'indexDjs' 
      get 'indexYacht'
      get 'indexVilla'
=======
      get 'indexDjs'   
      get 'indexHall'
      get 'indexGarden'
>>>>>>> 4ff721dcc9c01b9677d141c3b1bc51f46bf6fe1d
    end
  end
end
