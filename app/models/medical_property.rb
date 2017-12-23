class MedicalProperty < ApplicationRecord
  has_many :oil_med_props
  has_many :oils, through: :oil_med_props
end
