Rails.application.routes.draw do
  devise_for :users, :controller => {
    registrations: 'registrations'
  }
  resources :resumes, only: [:index, :new, :create, :destroy]
  root to: "resumes#index"
end
