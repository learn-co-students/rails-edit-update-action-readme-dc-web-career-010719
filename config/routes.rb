Rails.application.routes.draw do
  resources :articles, except: :destory
end
