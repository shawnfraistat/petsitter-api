class RemoveNameFromSitter < ActiveRecord::Migration[5.2]
  def change
    remove_column :sitters, :name, :string
  end
end
