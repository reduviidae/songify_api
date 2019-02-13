Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :songs, only: [:index, :show, :post]
      resources :sections, only: [:index, :show, :post]
      resources :snippets, only: [:index, :show, :post]
    end
  end
end
