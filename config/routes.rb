Rails.application.routes.draw do
  root 'categories#index'
  resources :categories
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :articles do
    resources :votes, only: %i[new create destroy]
  end


  resource :session, only: %i[create destroy]
  get 'signin' => 'sessions#new'
  get 'signout' => 'sessions#destroy'
  get 'signup' => 'users#new'

end
