# == Schema Information
#
# Table name: products
#
#  id              :bigint           not null, primary key
#  user_id         :bigint           not null
#  name            :string
#  description     :text
#  category_id     :bigint           not null
#  price           :integer
#  release_date    :date
#  link_to_website :string
#  available       :boolean          default(TRUE)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Product < ApplicationRecord
  # Relaciones
  belongs_to :user
  belongs_to :category
  ## Relación muchos a muchos
  has_many :product_features, dependent: :destroy
  has_many :features, through: :product_features
  has_one_attached :photo

  # Validaciones
  validates :name,            presence: true,
                              uniqueness: true
  validates :description,     presence: true,
                              length: { minimum: 10 }
  validates :price,           presence: true,
                              numericality: { greater_than: 0 }
  validates :release_date,    presence: true
  validates :link_to_website, presence: true,
                              format: { with: /\A#{URI::DEFAULT_PARSER.make_regexp(%w[http https])}\z/ },
                              uniqueness: true
end
