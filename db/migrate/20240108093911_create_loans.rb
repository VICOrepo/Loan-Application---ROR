class CreateLoans < ActiveRecord::Migration[7.0]
  def change
    create_table :loans do |t|
      t.string :name
      t.string :email
      t.decimal :amount
      t.string :purpose
      t.string :status
      t.numeric :ssn
      t.numeric :phone_number
      t.text :profession
      t.string :address
      t.decimal :income
      t.timestamps
    end
  end
end
