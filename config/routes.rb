Rails.application.routes.draw do
  get "checklists/fill_checklist" => 'checklists#fill_checklist', :as => :fill_checklist
  
  devise_for :users

  root "pages#index"

  resources :audits

  resources :checklists do
    resources :audits
  end
end
