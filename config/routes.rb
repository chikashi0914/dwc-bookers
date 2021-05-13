Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  root :to => 'books#top'
  get 'books' => 'books#new'
  get 'books' => 'books#index'
  get 'books/:id' => 'books#show', as:'show_books'
  post 'books' => 'books#create'
  get 'books/:id/edit' => 'books#edit', as: 'edit_books'
  patch 'books/:id/edit' => 'books#update', as: 'update_books'
  delete 'books' => 'books#destroy'
end
