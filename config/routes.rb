Rails.application.routes.draw do

  resources :students, only: [:index, :show, :new, :create, :edit, :update ]
  patch 'students/:id', to: 'students#update'
  # get '/student/:id', to:'students#show', as: 'student'
  

  # get 'school_classes/index'
  # get 'school_classes/new'
  # get 'school_classes/create'

end
