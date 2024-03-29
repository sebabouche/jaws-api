class Category < ActiveRecord::Base
  has_many :products

  validates_presence_of :priority, :name,
                        :displayName, :visibility
end
