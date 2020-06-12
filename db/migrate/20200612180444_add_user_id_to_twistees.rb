class AddUserIdToTwistees < ActiveRecord::Migration[6.0]
  def change
    add_column :twistees, :user_id, :integer
  end
end
