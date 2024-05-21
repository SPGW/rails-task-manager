Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # get "list", to: "tasks#list"
  root to: "tasks#list"
  # get new task page
  get "tasks/new", to: "tasks#new", as: :new_task
  # create new task
  post "tasks", to: "tasks#create"
  # get each task page
  get "tasks/:id", to: "tasks#show", as: :task
  # update existing task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit
  #patch
  patch "tasks/:id", to: "tasks#update"

  delete "tasks/:id", to: "tasks#destroy"
end
