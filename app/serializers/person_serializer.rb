class PersonSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :java_bars
end
