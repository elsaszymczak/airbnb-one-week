class CreateCamps < ActiveRecord::Migration[5.2]
  def change
    create_table :camps do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.references :user, foreign_key: true
      t.string :location

      t.timestamps
    end
  end
end
