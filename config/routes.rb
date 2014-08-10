TodoBackendRails::Application.routes.draw do
  post "/" => "todos#create"
  delete "/" => "todos#destroy_all"
  get "/:id" => "todos#show"
  patch "/:id" => "todos#update"
  root 'todos#index'
end
