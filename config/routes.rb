Rails.application.routes.draw do
namespace :api do
  get '/students' => 'students#index'
  post '/students' => 'students#create'
  get '/students/:id' => 'students#show'

  post '/sessions' => 'sessions#create'

  get '/educations/:id' => 'educations#show'
  post '/educations' => 'educations#create'
end
end
