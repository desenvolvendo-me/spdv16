Rails.application.routes.draw do
  root 'welcome#index'

  get 'welcome/index'

  get 'subscriptions/read'
end
