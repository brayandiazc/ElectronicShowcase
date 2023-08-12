class Contact < ApplicationRecord
  # Validaciones
  validates :name,    presence: true
  validates :email,   presence: true,
                      format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :message, presence: true
end
