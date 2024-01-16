class AddUserIdToLoans < ActiveRecord::Migration[7.0]
  def change
    add_column :loans, :user_id, :int
  end
end
