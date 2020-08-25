Rails.application.routes.draw do
  
  resources :school_classes, only: [:show, :new, :create, :edit, :update]
  # patch '/school_classes/:id', to: 'school_classes#update', as: 'edit_school_class'
  resources :students, only: [:show, :new, :edit, :create, :edit, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
