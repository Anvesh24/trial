class CreateStylos < ActiveRecord::Migration
  def change
    create_table :stylos do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
