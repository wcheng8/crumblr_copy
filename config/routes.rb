Rails.application.routes.draw do

  get 'comments/create'
  resources :posts do
    resources :comments
  end
  root "posts#index"
end
