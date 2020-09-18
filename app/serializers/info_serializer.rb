class InfoSerializer < ActiveModel::Serializer
  attributes :id, :fav_drink, :least_fav, :recommend, :comment
  belongs_to :java_shop
end
