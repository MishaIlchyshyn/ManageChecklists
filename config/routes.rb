Rails.application.routes.draw do
  devise_for :users
  root "pages#index"

  resources :audits

  resources :checklists do
    resources :audits
  end
end
