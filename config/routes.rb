Rails.application.routes.draw do
  resources :placements
  
  root "placements#index"
end
