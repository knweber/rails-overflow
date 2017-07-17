Rails.application.routes.draw do
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
