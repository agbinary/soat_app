class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :identification_type, null: false
      t.integer :identification_number, null: false
      t.string :name, null: false
      t.string :surname, null: false
      t.string :email
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
