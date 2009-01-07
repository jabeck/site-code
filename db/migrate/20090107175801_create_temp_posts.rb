class CreateTempPosts < ActiveRecord::Migration
  def self.up
    create_table :temp_posts do |t|
      t.string :title
      t.string :body
      t.integer :original_post_id
      
      t.timestamps
    end
  end

  def self.down
    drop_table :temp_posts
  end
end
