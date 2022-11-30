Blogger::Engine.routes.draw do
  #get 'comments/index'
  # root 'blogger/articles#index'
  resources :articles do
    resources :comments
  end

end
