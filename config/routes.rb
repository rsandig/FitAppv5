FitApp::Application.routes.draw do

#############################################
#Think about                                                                           #
# => Sorting                                                                            #
# => Upcoming workouts                                                       #
# => Emails                                                                             #
#                                                                                               #
#############################################

get "/" => "activities#index"
root "activities#index"

#users read
get "/users" => "users#index"
get "/users/index" => "users#index"
get "/users/new" => "users#new"
get "/users/create" => "users#create"
get "/users/:user_id/show" => "users#show"

#activities read
get "/activities" => "activities#index"
get "/activities/index" => "activities#index"
get "/activities/show" => "activities#show"
get "/activities/new" => "activities#new"
get "/activities/create" => "activities#create"

#sessions
  get "/login" => "sessions#login"
  get "/logout" => "sessions#logout"
  get "/authenticate" => "sessions#create"

#communities
    get "/communities/index" => "communities#index"
    get "/communities" => "communities#index"
    get "/communities/new" => "communities#new"
    get "/communities/create" => "communities#create"
    get "/communities/:community_id/show" => "communities#show"
end
