TodoBackendRails::Application.routes.draw do
  post "/" => "home#create"
  root 'home#index'
end
