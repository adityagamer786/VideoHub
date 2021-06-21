Rails.application.routes.draw do
  # get 'likes/create'
  post 'likes/:video_id/destroy', to: 'likes#destroy', as: "destroy_like"
  resources :videos do
    resources :likes, only: [:create]
  end
  root to: 'pages#home'
  # root to: 'videos#new'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
