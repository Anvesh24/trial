class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :description
      t.string :pic
      t.integer :phone
      t.string :service1
      t.string :service2
      t.string :service3
      t.string :line1
      t.string :line2
      t.string :city
      t.string :state
      t.string :country
      t.integer :pin

      t.timestamps null: false
    end
  end
end
