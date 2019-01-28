class CreateExchanges < ActiveRecord::Migration[5.2]
  def change
    create_table :exchanges do |t|
      t.references :client, foreign_key: true
      t.references :sitter, foreign_key: true

      t.timestamps
    end
  end
end
