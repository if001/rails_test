Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'kafka_consumers/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
