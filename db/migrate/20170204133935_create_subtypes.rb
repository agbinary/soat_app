class CreateSubtypes < ActiveRecord::Migration
  def change
    create_table :subtypes do |t|
      t.belongs_to :vehicle_class, null: false, index: true, foreign_key: true
      t.integer :min
      t.integer :max

      t.timestamps null: false
    end
  end
end
