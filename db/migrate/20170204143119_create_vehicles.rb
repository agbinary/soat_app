class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :license_plate, null: false
      t.belongs_to :vehicle_class, null: false, index: true, foreign_key: true
      t.string :subtype
      t.string :age

      t.timestamps null: false
    end
  end
end
