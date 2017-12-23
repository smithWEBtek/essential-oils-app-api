class OilUseSerializer < ActiveModel::Serializer
  attributes :id, :oil_id, :use_id
  belongs_to :oil
  belongs_to :use
end
