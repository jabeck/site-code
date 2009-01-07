class AddDefaultSections < ActiveRecord::Migration
  def self.up
    blog = Section.create(:name => "Blog")
    news = Section.create(:name => "News")
    tutorials = Section.create(:name => "Tutorials")
  end

  def self.down
  end
end
