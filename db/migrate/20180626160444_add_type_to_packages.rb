class AddTypeToPackages < ActiveRecord::Migration[5.2]
  def change
    add_reference :packages, :type, foreign_key: true
  end
end
