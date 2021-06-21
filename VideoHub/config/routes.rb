Rails.application.routes.draw do
  # get 'likes/create'
  # get 'likes/destroy'
  resources :videos do
    resources :likes, only: [:create, :destroy]
  end
  root to: 'pages#home'
  # root to: 'videos#new'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
