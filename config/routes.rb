Rails.application.routes.draw do
  # get 'welcome/index'
  # get 'sessions/new'
  # get 'users/new'
  get 'trees/data', :defaults => { :format => 'json' }
  get '/data' => 'trees#data'


  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"

  resources :users
  resources :sessions
  resources :pictures
  resources :trees

  get 'trees/index'
  get 'my_page' => "users#show", :as => "my_page"

  root :to => "welcome#index"
end
