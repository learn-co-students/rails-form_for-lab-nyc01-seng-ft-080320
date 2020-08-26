Rails.application.routes.draw do
    # resources :students, only: [:show, :new, :edit, :create, :update]
    # resources :school_classes, only: [:show, :new, :edit, :create, :update]
    resources :students, except: [:destroy, :index]
    resources :school_classes, except: [:destroy, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
