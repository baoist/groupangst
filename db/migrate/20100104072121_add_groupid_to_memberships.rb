class AddGroupidToMemberships < ActiveRecord::Migration
  def self.up
    add_column :memberships, :group_id, :integer
  end

  def self.down
    remove_column :memberships, :group_id, :integer
  end
end
