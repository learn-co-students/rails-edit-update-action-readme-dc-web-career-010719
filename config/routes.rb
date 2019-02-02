Rails.application.routes.draw do
  resources :articles, only: %i[index new create show edit update]
end
