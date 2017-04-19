Rails.application.routes.draw do
  root to: 'pages#home'
  get 'impressum', to: 'pages#impressum'
  resources :contacts, only: :create
  get 'kontakt', to: 'contacts#new', as: 'new_contact'
end
