class CreateDiscussions < ActiveRecord::Migration
  def self.up
    create_table :discussions do |t|
      t.string :author
      t.string :subject
      t.string :message
      t.timestamps
    end
  end
  
  def self.down
    drop_table :discussions
  end
end
