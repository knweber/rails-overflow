Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  post '/questions/:question_id/answers', to: 'answers#create'

# MICROCHALLENGE
  # get 'questions/index', to: 'questions#index'
  # get 'questions/new', to: 'questions#new'
  # post 'questions', to: 'questions#create'
  # get 'questions/:id', to: 'questions#show'

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
