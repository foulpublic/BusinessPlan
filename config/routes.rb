Rails.application.routes.draw do
  devise_for :users
   get 'index' => 'plans#index'
   get 'index_nologin' => 'plans#index_nologin'
   root 'plans#index'
end
