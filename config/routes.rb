Rails.application.routes.draw do
  get '/home',    to: 'pages#home'
  get '/privacy', to: 'pages#privacy'
  get '/legal',   to: 'pages#terms'
  root "pages#home"
end
