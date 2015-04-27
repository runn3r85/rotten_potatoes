Rails.application.routes.draw do
  
  resources :movies

  post "/movies/:id/reviews", to: "reviews#create", as: :reviews


  devise_for :users
  root to: "movies#index"
  

end
