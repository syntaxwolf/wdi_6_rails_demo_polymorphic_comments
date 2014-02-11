PolyDemo::Application.routes.draw do

  resources :ducks

  resources :computers do
    resources :comments, defaults: {commentable: 'computer'}
  end

  resources :cars do
    resources :comments, defaults: {commentable: 'car'}
  end

end
