Rails.application.routes.draw do
  resources :users
  resources :challenges do
      resources :participations
  end
end
