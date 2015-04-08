require 'sidekiq/web'
Rails.application.routes.draw do
  devise_for :users

  authenticate :user, lambda { |u| u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

  root to: "signup#new"
  post 'signup' => 'signup#create'
  get 'signup' => 'signup#new'

end
