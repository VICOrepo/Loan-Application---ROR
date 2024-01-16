class CreateLoans < ActiveRecord::Migration[7.0]
  def change
    create_table :loans do |t|
      t.string :name
      t.string :email
      t.string :middle_name  # Changed: Use underscore for column names
      t.string :last_name    # Changed: Use underscore for column names
      t.date :date_of_birth  # Added: Date of Birth
      t.decimal :amount
      t.string :purpose
      t.numeric :ssn
      t.numeric :phone_number
      t.string :profession
      t.string :address
      t.numeric :home_number  # Added: Home Number
      t.string :street_address2  # Added: Street Address 2
      t.string :city  # Added: City
      t.string :state  # Added: State
      t.numeric :zip  # Added: Zip
      t.string :residence_type  # Added: Residence Type
      t.decimal :annual_income  # Added: Annual Income
      t.string :employer_name  # Added: Employer Name
      t.numeric :employer_phone  # Added: Employer Phone
      
      t.timestamps
    end
  end
end
