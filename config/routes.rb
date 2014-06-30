Rails.application.routes.draw do
  root 'users#index'

  get '/search' => 'articles#result'

  resources :users do
    resources :articles
  end

  # this looks like you have /users/:user_id/articles/:article_id
  # and /articles/:article_id/:poem/:poem_id
  # It is confusing and can probably be simplified.
  resources :articles do
    resources :poem
  end
  post '/users/:user_id/articles/:id' => 'articles#destroy'


  get 'sessions/new' => 'sessions#new', as: 'log_in'
  get 'sessions' => 'sessions#index', as: 'sessions'
  post 'sessions' => 'sessions#create'
  delete 'sessions' => 'sessions#destroy', as: 'log_out'

end
