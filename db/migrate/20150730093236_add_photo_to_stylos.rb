class AddPhotoToStylos < ActiveRecord::Migration
  def change
    add_column :stylos, :photo, :string
  end
end
