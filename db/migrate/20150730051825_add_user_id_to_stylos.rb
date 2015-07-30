class AddUserIdToStylos < ActiveRecord::Migration
  def change
    add_column :stylos, :user_id, :integer
  end
end
