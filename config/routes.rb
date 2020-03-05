Rails.application.routes.draw do
namespace :api do
  get '/students' => 'students#index'
  post 'students' => 'students#create'

end
end
