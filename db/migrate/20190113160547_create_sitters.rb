class CreateSitters < ActiveRecord::Migration[5.2]
  def change
    create_table :sitters do |t|
      t.text :about
      t.integer :price
      t.integer :service_range
      t.references :user, foreign_key: true
      t.string :animal_types
      t.string :services_provided

      t.timestamps
    end
  end
end
