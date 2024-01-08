class Loan < ApplicationRecord
    validates :name, presence: true, length: { minimum: 4, maximum: 100 }
    validates :email, presence: true, length: { minimum: 4, maximum: 100 }, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :amount, presence: true, numericality: { greater_than: 0 }
    validates :purpose, presence: true, length: { minimum: 4, maximum: 100 }
    # validates :ssn, presence: true, length: { is: 9 }, numericality: { only_integer: true }
    # validates :phone_number, presence: true, length: { is: 10 }, numericality: { only_integer: true }
    validates :address, presence: true, length: { minimum: 4, maximum: 100 }
    validates :income, presence: true, numericality: { greater_than: 0 }
    validates :profession, presence: true, length: { minimum: 4, maximum: 100 }
end
