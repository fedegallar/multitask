Rails.application.routes.draw do
  resources :comments, only: [:new, :create]
  resources :tareas
  resources :materia
  resources :estados
  root to: "tareas#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
