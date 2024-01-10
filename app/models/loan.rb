class Loan < ApplicationRecord
    validates :name, presence: true, length: { minimum: 4, maximum: 100 }
    validates :email, presence: true, length: { minimum: 4, maximum: 100 }, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :amount, presence: true, numericality: { greater_than: 0 }
    validates :purpose, presence: true, length: { minimum: 4, maximum: 100 }
    validates :ssn, presence: true, length: {  minimum: 5, maximum: 9 }
    validates :phone_number, presence: true, length: {  minimum: 5, maximum: 10}
    validates :address, presence: true, length: { minimum: 4, maximum: 100 }
    validates :income, presence: true, numericality: { greater_than: 0 }
    validates :profession, presence: true, length: { minimum: 4, maximum: 100 }
end
