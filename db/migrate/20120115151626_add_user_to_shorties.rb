class AddUserToShorties < ActiveRecord::Migration
  def change
    add_column :shorties, :user_id, :integer
  end
end
