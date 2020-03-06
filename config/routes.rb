Rails.application.routes.draw do
namespace :api do
  get '/students' => 'students#index'
  post '/students' => 'students#create'
  get '/students/:id' => 'students#show'

  post '/sessions' => 'sessions#create'

  post '/educations' => 'educations#create'
  get '/educations/:id' => 'educations#show'
  patch '/educations/:id' => 'educations#update'
  delete '/educations/:id' => 'educations#destroy'

  post '/experiences' => 'experiences#create'
  get '/experiences/:id' => 'experiences#show'
  patch '/experiences/:id' => 'experiences#update'
  delete '/experiences/:id' => 'experiences#destroy'


end
end
