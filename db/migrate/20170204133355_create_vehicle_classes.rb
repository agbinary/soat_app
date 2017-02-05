class CreateVehicleClasses < ActiveRecord::Migration
  def change
    create_table :vehicle_classes do |t|
      t.string :description, null: false

      t.timestamps null: false
    end
  end
end
