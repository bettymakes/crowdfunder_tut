Crowdfunder::Application.routes.draw do
  root "projects#index"

  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"

  resources :projects
  resources :pledges, :only => [:new, :create]
  resources :users, except: [:index]
  resources :sessions
end