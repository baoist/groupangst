class AddGroupidToDiscussion < ActiveRecord::Migration
  def self.up
    add_column :discussions, :group_id, :integer
  end

  def self.down
    remove_column :discussions, :group_id
  end
end
