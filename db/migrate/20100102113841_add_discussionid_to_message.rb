class AddDiscussionidToMessage < ActiveRecord::Migration
  def self.up
    add_column :messages, :discussion_id, :integer
  end

  def self.down
    remove_column :messages, :discussion_id
  end
end
