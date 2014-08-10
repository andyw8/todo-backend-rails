TodoBackendRails::Application.routes.draw do
  post "/" => "home#create"
  delete "/" => "home#destroy"
  root 'home#index'
end
