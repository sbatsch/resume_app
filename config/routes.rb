Rails.application.routes.draw do
namespace :api do
  get '/students' => 'students#index'
  post '/students' => 'students#create'
  get '/students/:id' => 'students#show'

  post '/sessions' => 'sessions#create'
end
end
