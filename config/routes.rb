Rails.application.routes.draw do
  resources :payments, only: [:new] do
    collection do
      get 'success'
      get 'cancel'
    end
  end
  # get 'payments/new', to: 'payments#new', as: 'new_payment'
  root 'payments#index'
end
