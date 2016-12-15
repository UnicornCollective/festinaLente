Rails.application.routes.draw do

	namespace :admin do
		resources :clients, :projects
	end

 	resources :events, :users
 	root 'welcome#calendar' 
 	get 'sign_in' => 'sessions#new', as: :sign_in
    post 'sign_in' => 'sessions#create'
    delete 'sign_in' => 'sessions#delete', as: :end_session
    get 'sign_out' => 'sessions#delete', as: :sign_out
 end

