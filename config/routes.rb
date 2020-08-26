Rails.application.routes.draw do
  # resources :students
  # resources :school_classes


  #Manually write out routes for practice

  #School Classes
  #index
  get '/school_classes', to: 'school_classes#index', as: 'school_classes'

  #new (exact path, needs to be above #show)
  get '/school_classes/new', to: 'school_classes#new', as: 'new_school_class'

  #show
  get '/school_classes/:id', to: 'school_classes#show', as: 'school_class'

  #create
  post '/school_classes', to: 'school_classes#create'

  #edit
  get '/school_classes/:id/edit', to: 'school_classes#edit', as: 'edit_school_class'

  #update
  patch '/school_classes/:id', to: 'school_classes#update'


  #Students
  #index
  get '/students', to: 'students#index', as: 'students'

  #new
  get '/students/new', to: 'students#new', as: "new_student"

  #show
  get '/students/:id', to: 'students#show', as: 'student'

  #create
  post '/students', to: 'students#create'

  #edit
  get '/students/:id/edit', to: 'students#edit', as: 'edit_student'

  #update
  patch '/students/:id', to: 'students#update'



end
