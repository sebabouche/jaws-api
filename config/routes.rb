Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  mount_devise_token_auth_for 'Merchant', at: 'merchants'

  # this route will authorize visitors using the User class
  get 'demo/members_only', to: 'user#members_only'

  # routes within this block will authorize visitors using the Merchant class
  get 'demo/members_only_merchant', to: 'mechant#members_only'

  # routes within this block will authorize visitors using the Merchant or User class
  get 'demo/members_only_group', to: 'group#members_only'
end
