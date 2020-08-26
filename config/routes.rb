Rails.application.routes.draw do
  
  resources :school_classes, only: [:show, :new, :create, :edit, :update]

  resources :students, only: [:show, :new, :create, :edit, :update]

end
  
#   get 'students/new'

#   get 'students/create'

#   get 'students/show'

#   get 'students/edit'

#   get 'students/update'

#   get 'school_class/new'

#   get 'school_class/create'

#   get 'school_class/show'

#   get 'school_class/edit'

#   get 'school_class/update'

#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end
