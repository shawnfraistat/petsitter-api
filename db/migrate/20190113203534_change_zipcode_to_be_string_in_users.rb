class ChangeZipcodeToBeStringInUsers < ActiveRecord::Migration[5.2]
  def up
    change_column :users, :zip_code, :string
  end

  def down
    change_column :users, :zip_code, :integer
  end
end
