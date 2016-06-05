class ProductSerializer < ActiveModel::Serializer
  attributes  :id,
              :priority,
              :title,
              :price_cents,
              :img,
              :desc,
              :tip,
              :expiry,
              :portion,
              :people

  belongs_to :category
  belongs_to :merchant

  class CategorySerializer < ActiveModel::Serializer
    attribute :displayName
  end
end
