class OilMedPropSerializer < ActiveModel::Serializer
  attributes :id, :oil_id, :medical_property_id
  belongs_to :oil
  belongs_to :medical_property
end
