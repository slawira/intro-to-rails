Rails.application.routes.draw do
  resources :users
  root 'static_pages#home'
  get 'contact-us', to: 'static_pages#contact'
  get 'about-us', to: 'static_pages#about'
  get 'helloworld', to: 'static_pages#helloworld'

  resources :articles do
    resources :comments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
