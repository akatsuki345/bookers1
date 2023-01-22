Rails.application.routes.draw do
  get 'books/new'
  get 'books/edit'
  post 'books' => 'books#create'
  get '/top' => 'homes#top'
  get 'books' => 'books#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'books/:id' => 'books#show'
end
