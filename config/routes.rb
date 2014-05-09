Rails.application.routes.draw do
  resources :books do
    resources :ratings
  end

  root 'books#index'
end
