Rails.application.routes.draw do
  root 'user#new'
  post 'users' => 'user#create'
  get 'genres' => 'genre#index'
  get 'genres/:genre_id/:snippet_id' => 'genre#snippet'
  get 'genres/:genre_id/stories/:story_id' => 'story#show'
  get 'logout' => 'user#logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end