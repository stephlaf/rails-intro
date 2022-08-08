Rails.application.routes.draw do
  # root, a special route 😄
  root to: 'pages#home'

  # verb '/path', to: 'controller#action', as: :custom_prefix
  get '/about', to: 'pages#about', as: :about_us
  get '/contact', to: 'pages#contact'
end
