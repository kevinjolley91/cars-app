Rails.application.routes.draw do
  get "/manufacturers" => "manufacturers#index"
  get "/manufacturers/:id" => "manufacturers#show"
  post "/manufacturers" => "manufacturers#create"
  patch "/manufacturers/:id" => "manufacturers#update"
  delete "/manufacturers/:id" => "manufacturers#delete"

  get "/models" => "models#index"
  get "/models/:id" => "models#show"
  post "/models" => "models#create"
  patch "/models/:id" => "models#update"
  delete "/models/:id" => "models#delete"
end
