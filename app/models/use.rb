class Use < ApplicationRecord
  has_many :oil_uses
  has_many :oils, through: :oil_uses
end
