Rails.application.routes.draw do



  # This show route can be refactored into the above resources method call, like so:
  resources :students, only: [:index, :show, :activate]

  get '/students/:id/activate', to: 'students#activate', as: 'activate_student'

  # However, for the sake of this lab and seeing how you can pass params through
  # the route, we'll keep it explicit for now and refactor later.
  #get "students/:id", to: "students#show"
end
