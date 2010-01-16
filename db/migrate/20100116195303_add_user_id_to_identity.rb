class AddUserIdToIdentity < ActiveRecord::Migration
  def self.up
    add_column :identities, :user_id,  :integer  
  end

  def self.down
    remove_column :identities, :user_id, :integer
  end
end
