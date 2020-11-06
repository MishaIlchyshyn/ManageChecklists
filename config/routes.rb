Rails.application.routes.draw do
  root "pages#index"

  resources :audits

  resources :checklists do
    resources :audits
  end
end
