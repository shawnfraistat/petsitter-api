class RemoveColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :clients, :pic_url
  end
end
