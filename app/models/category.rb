# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  name       :string
#  available  :boolean          default(TRUE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Category < ApplicationRecord
  # Validaciones
  validates :name,      presence: true,
                        uniqueness: true
  validates :available, inclusion: { in: [true, false] }
end
