Rails.application.routes.draw do
  resources :books, only: %i[create show], shallow: true do
    collection do
      get :search
    end
  end
end
