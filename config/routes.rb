Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # user can list the tasks
  get '/tasks', to: 'tasks#index'

  # user can add a new task
  get '/tasks/new', to: 'tasks#new'
  post '/tasks', to: 'tasks#create'

  # user can view the details of the task
  get '/tasks/:id', to: 'tasks#show'

  # user can edit a task
  get '/tasks/:id', to: 'tasks#edit'
  patch '/tasks/:id/edit', to: 'tasks#update'

  # user can remove a task
  delete '/tasks', to: 'tasks#destroy'
end
