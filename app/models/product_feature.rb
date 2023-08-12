class ProductFeature < ApplicationRecord
  # Relaciones
  belongs_to :product
  belongs_to :feature

  # Validaciones
  validates :product, :feature, presence: true
end
