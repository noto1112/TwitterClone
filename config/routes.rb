Rails.application.routes.draw do
  root 'welcome#index'
  resources :speaks do
    collection do
      post :confirm
    end
  end
end
