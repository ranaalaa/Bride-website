Rails.application.routes.draw do

  root 'welcome#HomePage'
  devise_for :views
  devise_for :users,controllers: {omniauth_callbacks: "omniauth_callbacks"}
 

get 'welcome/AboutUs'
get 'welcome/OurPeople'




  resources :vendors do
    resources :packages
    resources :samples
    resources :comments
    resources :brands
    resources :ratings
  
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
    end
  end
end
