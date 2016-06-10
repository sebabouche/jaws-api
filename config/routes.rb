Rails.application.routes.draw do

  post 'auth_user' => 'authentication#authenticate_user'
  get 'test' => 'test#index'

end
