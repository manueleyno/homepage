Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root to: 'pages#home'
  get 'impressum', to: 'pages#impressum'
  get 'stories', to: 'posts#index'
  resources :contacts, only: :create
  get 'Kontakt_Formular', to: 'contacts#new', as: 'new_contact'
  get 'produkte', to: 'products#produkte'
  get 'sicherungsbrille', to: 'products#sicherungsbrille'
  get 'brillen_etui', to: 'products#brillen_etui'
end
