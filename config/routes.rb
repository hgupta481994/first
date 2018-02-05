Rails.application.routes.draw do

 
  devise_for :users
  root 'links#index'
  get 'links' => 'links#index'

  get 'links/:id' => 'links#show', as: :link

  get 'links/new'  => 'links#new'
  get '/new'  => 'links#new'

  post 'links' => 'links#create'
  get  'links/:id/edit' => 'links#edit', as: :link_edit
  
  patch '/links/:id' => 'links#update'
  delete '/links/:id' => 'links#destroy'


  
  get    'links/admin/action' => 'admin#action'
  delete '/links/admin/:id' => 'admin#destroy', as: :delete_user


# devise_for :users, path: 'users', controllers: { sessions: "users/sessions", registrations: "users/registrations"}
#devise_for :admins, path: 'admins', controllers: { sessions: "admins/sessions", registrations: "admin/registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
