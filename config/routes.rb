TodoBackendRails::Application.routes.draw do
  post "/" => "todos#create"
  delete "/" => "todos#destroy"
  root 'todos#index'
end
