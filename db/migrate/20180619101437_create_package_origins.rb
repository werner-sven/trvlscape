class CreatePackageOrigins < ActiveRecord::Migration[5.2]
  def change
    create_table :package_origins do |t|
      t.references :package, foreign_key: true
      t.references :origin, foreign_key: true

      t.timestamps
    end
  end
end
