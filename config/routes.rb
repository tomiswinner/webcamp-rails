Rails.application.routes.draw do
  get 'todolists/new',as:"todolists_new"
  get 'top' => 'homes#top',as:"top"
  post 'todolists' => 'todolists#create'
  get 'index' => 'todolists#index',as:"index"

  get 'todolists/:id' => 'todolists#show', as:'todolist'
  patch 'todolists/:id' => 'todolists#update',as:'update_todolist'
  delete 'todolists/:id' => 'todolists#destroy',as:'destroy_todolist'

  get 'todolists/:id/edit' => 'todolists#edit', as:'edit_todolist'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



end
