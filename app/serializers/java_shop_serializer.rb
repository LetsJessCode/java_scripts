class JavaShopSerializer < ActiveModel::Serializer
  attributes :id, :shop_name
  has_many :infos
end
