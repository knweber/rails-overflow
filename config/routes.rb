Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  get 'questions/index'

  resources :users, except: :index do
    resources  :questions
    resources  :answers
  end
  resources :questions do
    resources :answers
  end
  resources :answers, except: [:index, :show]

  root 'questions#index'
end
