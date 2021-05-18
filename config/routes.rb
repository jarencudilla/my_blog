Rails.application.routes.draw do
root 'articles#index'

  get '/articles' => 'articles#index'
  get '/articles/new' => 'articles#new'
  get '/articles/:id' => 'articles#show', as: 'articles_show'
  get '/articles/:id/edit' => 'articles#edit', as: 'articles_edit'
  put '/articles/:id' => 'articles#update', as: 'articles_update'
  delete '/articles/:id/delete' => 'articles#delete', as: 'articles_delete'
  post '/articles' => 'articles#create', as: 'articles_create' 
  
end