class CreateDiscussions < ActiveRecord::Migration
  def self.up
    create_table :discussions do |t|
      t.string :subject
      t.text :body
      t.integer :member_id
      t.timestamps
    end
  end
  
  def self.down
    drop_table :discussions
  end
end
