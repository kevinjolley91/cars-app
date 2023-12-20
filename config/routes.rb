Rails.application.routes.draw do
  get "/manufacturers" => "manufacturers#index"
  get "/manufacturers/:id" => "manufacturers#show"
  post "/manufacturers" => "manufacturers#create"
  patch "/manufacturers/:id" => "manufacturers#update"
  delete "/manufacturers/:id" => "manufacturers#delete"
end
