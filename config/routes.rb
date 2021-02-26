Rails.application.routes.draw do
  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  post 'tasks/:id/edit' => 'tasks#edit'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :create]
  resources :tasks, only: [:index, :show, :new, :create, :destroy, :edit, :update] do
  end
end

