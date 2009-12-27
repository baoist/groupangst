class DiscussionsController < ApplicationController
  def index
    @discussions = Discussion.all
  end
  
  def show
    @discussion = Discussion.find(params[:id])
  end
  
  def new
    @discussion = Discussion.new
  end
  
  def create
    @discussion = Discussion.new(params[:discussion])
    if @discussion.save
      flash[:notice] = "Successfully created discussion."
      redirect_to @discussion
    else
      render :action => 'new'
    end
  end
  
  def edit
    @discussion = Discussion.find(params[:id])
  end
  
  def update
    @discussion = Discussion.find(params[:id])
    if @discussion.update_attributes(params[:discussion])
      flash[:notice] = "Successfully updated discussion."
      redirect_to @discussion
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @discussion = Discussion.find(params[:id])
    @discussion.destroy
    flash[:notice] = "Successfully destroyed discussion."
    redirect_to discussions_url
  end
end
