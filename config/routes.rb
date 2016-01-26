Rails.application.routes.draw do
  root to: "lunas#new"
  resources :lunas
end
