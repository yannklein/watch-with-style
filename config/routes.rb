Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'watch_with_style_lists#index'
  resources :watch_with_style_lists, only: [:index, :new, :show]
  resources :watch_with_style_lists do 
    resources :watch_with_style_bookmarks, only: [:new, :create]
  end
  resources :watch_with_style_bookmarks, only: [:destroy]
end
