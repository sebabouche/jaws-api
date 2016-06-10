Rails.application.routes.draw do

  get 'test' => 'test#index'

  devise_for :users, :controllers => {sessions: 'api/sessions', registrations: 'api/registrations'}
end
