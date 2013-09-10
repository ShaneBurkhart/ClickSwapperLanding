FindMeJobsBetaSite::Application.routes.draw do
  root :to => "home#index"
  get "/preview", to: "home#index"
  resources :users, only: ["create"]
end
