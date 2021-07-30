Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #show all groups
  get "/groups" => "groups#index"
  #show one specific group
  get "/groups/:id" => "groups#show"
  #make a new group
  post "/groups" => "groups#create"
  #update currently existing group
  patch "/groups/:id" => "groups#update"
  #delete existing group
  delete "/groups/:id" => "groups#destroy"
end
