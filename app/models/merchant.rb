class Merchant < ActiveRecord::Base
  include DeviseTokenAuth::Concerns::User
end
