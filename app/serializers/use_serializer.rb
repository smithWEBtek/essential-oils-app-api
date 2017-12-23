class UseSerializer < ActiveModel::Serializer
  attributes :id, :description
  has_many :oil_uses
  has_many :oils, through: :oil_uses
end
