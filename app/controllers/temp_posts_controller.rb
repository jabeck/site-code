class TempPostsController < ApplicationController
  def index
    @temp_posts = TempPost.find(:all)
  end

  def edit
    @temp = TempPost.find(params[:id])
  end

  def update
    @temp = TempPost.find(params[:id])

    respond_to do |format|
      if @temp.update_attributes(params[:temp_post])
        flash[:notice] = 'Post was successfully saved.'
        format.html { redirect_to(edit_temp_post_path(@temp)) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @temp.errors, :status => :unprocessable_entity }
      end
    end
  end

  def revert
    @temp = TempPost.find(params[:id])
    @post = Post.find(:first, :conditions => ["id = ?", @temp.post_id])
    @temp.destroy
    redirect_to edit_post_path(@post)
  end
  
  def publish_changes
    @temp = TempPost.find(params[:id])
    @post = Post.find(:first, :conditions => ["id = ?", @temp.post_id])
    @all_temps = 
  end
   
  def destroy
    @temp = TempPost.find(params[:id])
    @temp.destroy

    respond_to do |format|
      format.html { redirect_to(temp_posts_url) }
      format.xml  { head :ok }
    end
  end
end
