class Loan < ApplicationRecord
    belongs_to :user

    validates :name, presence: true, length: { minimum: 4, maximum: 100 }
    validates :email, presence: true, length: { minimum: 4, maximum: 100 }, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :middle_name, length: { maximum: 100 } # Allow blank, but validate length if present
    validates :last_name, length: { maximum: 100 } # Allow blank, but validate length if present
    validates :date_of_birth, presence: true
    validates :amount, presence: true, numericality: { greater_than: 0 }
    validates :purpose, presence: true, inclusion: { in: %w(Home Car Education Business Wedding) }, length: { minimum: 4, maximum: 50 }
    validates :ssn, presence: true
    validates :phone_number, presence: true
    validates :address, presence: true, length: { minimum: 4, maximum: 100 }
    validates :home_number, numericality: { only_integer: true }, allow_blank: true
    validates :street_address2, length: { maximum: 100 }, allow_blank: true
    validates :city, length: { maximum: 50 }, allow_blank: true
    validates :state, length: { maximum: 50 }, allow_blank: true
    validates :zip, numericality: { only_integer: true }, allow_blank: true
    validates :residence_type, length: { maximum: 50 }, allow_blank: true
    validates :annual_income, presence: true, numericality: { greater_than: 0 }
    validates :employer_name, length: { maximum: 100 }, allow_blank: true
    validates :employer_phone, numericality: { only_integer: true }, allow_blank: true
  
    enum purpose: [:Home, :Car, :Education, :Business, :Wedding]
  end
  