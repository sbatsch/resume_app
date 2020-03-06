Rails.application.routes.draw do
namespace :api do
  get '/students' => 'students#index'
  post '/students' => 'students#create'
  get '/students/:id' => 'students#show'

  post '/skills' => 'skills#create'
  get '/skills/:id' => 'skills#show'
  patch '/skills/:id' => 'skills#update'
  delete 'skills/:id' => 'skills#destroy'

  post '/projects' => 'projects#create'
  get '/projects/:id' => 'projects#show'
  patch '/projects/:id' => 'projects#update'
  delete 'projects/:id' => 'projects#destroy'
  post '/sessions' => 'sessions#create'


  get '/educations/:id' => 'educations#show'
  post '/educations' => 'educations#create'
  end
end  

