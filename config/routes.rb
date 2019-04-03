Rails.application.routes.draw do
  resources :posts
  root "posts#index"
  get  '/new',    to: 'posts#new'
end
