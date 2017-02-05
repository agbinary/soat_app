class CreateSoats < ActiveRecord::Migration
  def change
    create_table :soats do |t|
      t.belongs_to :user, null: false, index: true, foreign_key: true
      t.belongs_to :vehicle, null: false, index: true, foreign_key: true
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.integer :premium_value, null: false
      t.integer :fosyga, null: false
      t.integer :runt, null: false
      t.integer :total_value, null: false
      t.boolean :pay, default: false, null: false

      t.timestamps null: false
    end
  end
end
