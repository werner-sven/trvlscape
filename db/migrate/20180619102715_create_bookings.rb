class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :status
      t.string :origin
      t.integer :budget_pp
      t.string :excluded_countries
      t.references :package, foreign_key: true
      t.references :user, foreign_key: true
      t.string :climate
      t.references :type, foreign_key: true

      t.timestamps
    end
  end
end

