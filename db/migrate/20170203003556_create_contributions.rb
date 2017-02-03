class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.belongs_to :subtype, null: false, index: true, foreign_key: true
      t.string :age
      t.float :commercial_rate, null: false
      t.integer :premium_value, null: false
      t.integer :fosyga, null: false
      t.integer :subtotal_premium_value_fosyga, null: false
      t.integer :runt, null: false
      t.integer :total_value, null: false

      t.timestamps null: false
    end
  end
end
