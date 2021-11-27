require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'

  root 'welcome#index'

  get 'welcome/index'

  get 'subscriptions/read'
  post 'subscriptions/write'
end
