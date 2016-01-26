Rails.application.routes.draw do
  root to: "lunas#index"
  resources :lunas
end
