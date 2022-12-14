Rails.application.routes.draw do
  root "home#top" 
  get "likes/:post_id/create" => "likes#create"
  get "likes/:post_id" => "likes#destroy"
  post "likes/:post_id" => "likes#destroy"
  delete 'likes/:post_id' => 'likes#destroy'
  get "login" => "users#login_form"
  post "login" => "users#login"
  get "logout" => "users#logout"
  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  post "users/create" => "users#create"
  get "signup" => "users#new"
  get 'users/index'=>'users#index'
  get "users/:id" => "users#show"
  get 'tasks/_logged_in'
  
  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"
  get "import" => "posts#_logged_in"
  resources :posts
  get "/" => "home#top"
  get "about" => "home#about"
  resources :posts do
    collection {post :import} 
  end
end
