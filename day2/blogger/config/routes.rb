Rails.application.routes.draw do
  root 'posts#index'

  resources :posts do
    resources :comments, :only => [:create, :destroy]
  end

end
