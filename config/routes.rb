Rails.application.routes.draw do
 	resources :events, :users, :clients, :projects 
 	root 'welcome#calendar' 
 	get 'sign_in' => 'sessions#new', as: :sign_in
    post 'sign_in' => 'sessions#create'
    delete 'sign_in' => 'sessions#delete', as: :end_session
    get 'sign_out' => 'sessions#delete', as: :sign_out
 end

