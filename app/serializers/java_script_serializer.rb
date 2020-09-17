class JavaScriptSerializer < ActiveModel::Serializer
  attributes :id, :shop_name, :fav_drink, :least_fav, :recommend, :comment
  belongs_to :person
end
