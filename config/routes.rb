Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'impressum', to: 'pages#impressum'
  resources :contacts, only: :create
  get 'Kontakt_Formular', to: 'contacts#new', as: 'new_contact'
  resources :articles
end
