Rails.application.routes.draw do
  devise_for :users
  root to:"mentors#index"

  resources :mentors do
  end
end
