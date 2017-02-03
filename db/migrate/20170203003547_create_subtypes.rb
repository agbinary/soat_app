class CreateSubtypes < ActiveRecord::Migration
  def change
    create_table :subtypes do |t|
      t.belongs_to :vehicle, null: false, index: true, foreign_key: true
      t.string :description

      t.timestamps null: false
    end
  end
end
