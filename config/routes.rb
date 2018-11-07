Rails.application.routes.draw do
  devise_for :users, :controller => {
    registrations: 'registrations'
  }
  resources :resumes
  root to: "resumes#index"
end
