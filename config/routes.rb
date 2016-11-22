Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  localized do

    root 'home#index'
    resources :admins
    resources :posts
    resources :categories

  end

end
