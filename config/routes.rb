Rails.application.routes.draw do
  # routes for omni path/facebook integratin
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'


  resources :sessions, only: [:new, :create, :destroy]

  root 'users#home'

  get '/about' => 'users#about'

  resources :users, only: [:new, :create, :edit, :show, :destroy]

  resources :admin, only: [:new, :create, :show]

  patch '/update_user' => 'users#update', as: 'update_user'

  resources :email, only: [:create]

  resources :entries do
    resources :votes, only: [:create, :destroy] do
      member do
        get :confirm_email
      end
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
