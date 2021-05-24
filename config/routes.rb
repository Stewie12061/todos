Rails.application.routes.draw do
  get '/contact', controller: :contact, action: :index
  get '/about', controller: :about, action: :index
  get '/tasks', controller: :tasks, action: :index
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations',
        passwords: 'users/passwords'
      }
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
