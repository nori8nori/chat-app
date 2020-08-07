Rails.application.routes.draw do
  devise_for :users
  # get 'message/index'
  root "messages#index"
end