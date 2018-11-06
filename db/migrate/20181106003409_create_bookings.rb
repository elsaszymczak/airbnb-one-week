class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :camp, foreign_key: true
      t.references :user, foreign_key: true
      t.string :starts_at
      t.string :ends_at

      t.timestamps
    end
  end
end
