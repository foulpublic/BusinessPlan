Rails.application.routes.draw do
  devise_for :users
   get 'index' => 'plans#index'
   root 'plans#index'
end
