class CategorySerializer < ActiveModel::Serializer
  attributes
    :priority
    :name
    :displayName
    :visibility
end
