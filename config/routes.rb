Crowdfunder::Application.routes.draw do
  root  to: "projects#index"
  resources :projects
  resources :users
end
