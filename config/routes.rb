Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :prospects do
    resources :conversations
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
