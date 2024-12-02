Rails.application.routes.draw do
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'greet/:name', to: 'pages#greet', as: 'greeting'

  post 'contact', to: 'pages#contact_submit', as: 'contact_submit'

  root 'pages#home'
end
