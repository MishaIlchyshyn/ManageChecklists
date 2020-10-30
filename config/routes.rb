Rails.application.routes.draw do
  root "pages#index"

  resources :checklists
end
