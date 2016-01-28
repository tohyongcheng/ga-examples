Rails.application.routes.draw do

  devise_for :users
  root "landing#index"

  resources :posts, :except => [:edit, :update]

end
