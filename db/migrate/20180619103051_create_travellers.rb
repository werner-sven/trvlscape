class CreateTravellers < ActiveRecord::Migration[5.2]
  def change
    create_table :travellers do |t|
      t.string :passport_number
      t.date :passport_expiration
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :nationality
      t.date :birth_date
      t.references :booking, foreign_key: true

      t.timestamps
    end
  end
end
