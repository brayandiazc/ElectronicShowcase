class Category < ApplicationRecord
  # Validaciones
  validates :name,      presence: true,
                        uniqueness: true
  validates :available, inclusion: { in: [true, false] }
end
