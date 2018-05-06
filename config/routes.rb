Rails.application.routes.draw do
  post '/client_workouts/find' => 'client_workouts#search'
  resources :client_workouts
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
