class MainController < ApplicationController
  def index
    @posts = Post.find(:all, :conditions => { :published => true }, :order => :created_at)
    @recent_posts = @posts.reverse

    respond_to do |format|
      format.html
      format.xml  { render :xml => @posts }
    end
  end
end
