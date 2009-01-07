class ChangeOriginalPostIdToPostId < ActiveRecord::Migration
  def self.up
    rename_column(:temp_posts, :original_post_id, :post_id) 
  end

  def self.down
    rename_column(:temp_posts, :post_id, :original_post_id)
  end
end
