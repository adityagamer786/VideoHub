Rails.application.routes.draw do
  resources :videos do
    member do
      put "like" => 'videos#vote'
    end
  end
  root to: 'pages#home'
  # root to: 'videos#new'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
