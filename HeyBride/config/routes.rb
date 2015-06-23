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
get 'welcome/AboutUs'
get 'welcome/OurPeople'
get 'welcome/HomePage'

  resources :vendors do
    resources :packages
    resources :samples
    resources :comments
    resources :brands
    resources :ratings
     resources :adminsters
  
    collection do
      get 'indexHairdressers'
      get 'indexMakeup'
      get 'indexDresses'
      get 'indexPhotographers'
      get 'indexSpa'
      get 'indexSuites'
      get 'indexDjs' 
      get 'indexYacht'
      get 'indexVilla'
      get 'indexHall'
      get 'indexGarden'
      get 'indexExtra'
    end
  end
end
