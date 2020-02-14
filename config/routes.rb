Rails.application.routes.draw do
  get 'sign_up/' => 'users#create', :as => "sign_up"
  root :to => 'users#new'
  post '/users' => 'users#create'
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "users" => 'users#new'
    post "users" => 'users#create'
  end
end
