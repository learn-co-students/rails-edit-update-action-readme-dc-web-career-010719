Rails.application.routes.draw do
  # resources :articles, only: %i[index show new create edit update]
  resources :articles, except: %i(destroy)
end
