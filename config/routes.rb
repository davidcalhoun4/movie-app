Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"
# 
  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/actor_query_path" => "stars#actor_action"
    get "/actor_segment_path/:id" => "stars#actor_action"
  end

end

 # get "/movie_path" => "movies#single_movie_action"
 # get "/movies_path" => "movies#all_movie_action"