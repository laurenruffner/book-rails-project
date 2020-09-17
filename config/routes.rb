Rails.application.routes.draw do
  #sets the default routing
  root 'books#index'
  
  
  get 'books/index'
  get 'books/AddBook'
  get 'books/UpdateBook'
  get 'books/ShowDetails'
  get 'books/Delete'
  
  
  resources :books do
    member do
      get :delete
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
