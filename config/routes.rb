Rails.application.routes.draw do
  devise_for :users
  resources :resumes, only: [:index, :new, :create, :destroy]
  root to: "resumes#index"
end
