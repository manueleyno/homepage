Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'impressum', to: 'pages#impressum'
  resources :contacts, only: :create
  get 'Kontakt_Formular', to: 'contacts#new', as: 'new_contact'
  resources :articles
  get 'produkte', to: 'products#produkte'
  get 'sicherungsbrille', to: 'products#sicherungsbrille'
  get 'brillen_etui', to: 'products#brillen_etui'
end
