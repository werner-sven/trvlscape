class AddLatToPackages < ActiveRecord::Migration[5.2]
  def change
    add_column :packages, :lat, :string
    add_column :packages, :long, :string
  end
end
