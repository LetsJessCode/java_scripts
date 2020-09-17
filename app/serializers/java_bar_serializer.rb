class JavaBarSerializer < ActiveModel::Serializer
  attributes :id, :shop_name, :fav_drink, :least_fav, :recommend, :comment, :person
  belongs_to :person
end
