class RemoveUserIdAndFriendIdFromMatch < ActiveRecord::Migration
  def change
    remove_column :matches, :user_id
    remove_column :matches, :friend_id
  end
end
