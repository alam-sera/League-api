Rails.application.routes.draw do
  get "/league" => "league#index"
  get "/league/:id" => "league#show"
  get "/league" => "league#create"
end
