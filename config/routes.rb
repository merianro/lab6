Rails.application.routes.draw do
  resources :monsters, only: [:index, :show]  
  resources :tweets, expect: [:edit, :update]  

  root "tweets#index"
end
