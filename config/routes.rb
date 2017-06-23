Rails.application.routes.draw do

  get 'trying_controller/TryingView'

  # root route (basically homepage)
  root 'demo#index'

  get 'trying_controller/TryingView'

  get 'demo/hello'

  get 'demo/index'

  get 'demo/other_hello'

  get 'demo/lynda'

  # default rounte will go away in rails 5.2.
  #get ':controller(/:action(/:id))'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
