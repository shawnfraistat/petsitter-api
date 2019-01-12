class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.text :about
      t.string :pic_url
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
