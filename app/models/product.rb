class Product < ActiveRecord::Base

  default_scope { order('priority ASC') }

  belongs_to :category
  belongs_to :merchant
end
