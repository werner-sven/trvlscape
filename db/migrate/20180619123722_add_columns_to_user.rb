class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :phone, :string
    add_column :users, :credit_card_owner, :string
    add_column :users, :credit_card_nr, :string
    add_column :users, :csv, :string
    add_column :users, :expiry_date, :date
    add_reference :users, :traveller, foreign_key: true
  end
end
