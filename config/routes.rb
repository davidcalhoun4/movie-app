Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"
# 
  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/actors" => "stars#index"
    post "/actors" => "stars#create"
    get "/actors/:id" => "stars#show"
    patch "/actors/:id" => "stars#update"
    delete "actors/:id" => "stars#destroy"

    get "/movies" => "movies#index"
    post "/movies" => "movies#create"
    get "/movies/:id" => "movies#show"
    patch "/movies/:id" => "movies#update"
    delete "/movies/:id" => "movies#destroy"

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

  end

end

 # get "/movie_path" => "movies#single_movie_action"
 # get "/movies_path" => "movies#all_movie_action"