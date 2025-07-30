Rails.application.routes.draw do
  root "projects#index"

  resources :projects do
    resources :tasks do
      resources :timetrackers, only: [:create, :update]
      resources :comments, only: [:create]
    end
  end
end
