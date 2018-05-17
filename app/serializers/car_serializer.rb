class CarSerializer < ActiveModel::Serializer
  attributes :id, :model, :color, :year
end
