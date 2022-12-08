Rails.application.routes.draw do
  get "/league" => "league#index"
  get "/league/:id" => "league#show"
  post "/league" => "league#create"
  patch "/league/:id" => "league#update"
  delete "/league/:id" => "league#delete"
end
