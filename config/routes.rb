Rails.application.routes.draw do
  resources :doses, only: [:destroy]
  resources :cocktails, only: [:index, :show, :new, :create, :destroy] do
    resources :doses, only: [:new, :create]
  end
  get '/', to: "cocktails#index"
  # root to: 'cocktails#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
