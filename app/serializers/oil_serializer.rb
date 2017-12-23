class OilSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :fragrance_profile
  has_many :oil_uses
  has_many :uses, through: :oil_uses
 
  has_many :oil_med_props
  has_many :medical_properties, through: :oil_med_props
end
