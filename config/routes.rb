Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :students, except: [:destory]
  resources :school_classes, except: [:destroy]
  
  # get "/students", to: "students#index", as: "students"
  # get "/students/new", to: "students#new"
  # get "/students/:id/edit", to: "students#edit"
  # get "/students/:id", to: "students#show", as: "student"
  # post "/students", to: "students#create"
  # patch "/students/:id", to: "students#update"
  
end
