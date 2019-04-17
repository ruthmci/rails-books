Rails.application.routes.draw do
  root to: 'books#index'
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'books#index', as: 'books'
  get '/books/new', to: 'books#new', as: 'new_book'
  post '/books/new', to: 'books#create'
  get '/books/:id', to: 'books#show'
  post '/books/:id', to: 'books#delete', as: 'delete_book'
  get '/books/edit/:id', to: 'books#edit', as: 'edit_book'
  put '/books/edit/:id', to: 'books#update'
  # post '/books/update/:id', to: 'books#update'

end
