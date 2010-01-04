class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end
  
  def show
    @group = Group.find(params[:id])
  end
  
  def new
    if current_user
      @group = Group.new
    else
      flash[:notice] = "You must be logged in to create a group."
      redirect_to groupts_url
    end
  end
  
  def create
    if current_user
      @group = Group.new(params[:group])
      if @group.save
        flash[:notice] = "Successfully created group."
        redirect_to groups_url
      else
        render :action => 'new'
      end
    else
      flash[:notice] = "You must be logged in to create a group."
      redirect_to groups_url
    end
  end
  
  def edit
    fetch_group = Group.find(params[:id])
    if fetch_group.user_id == current_user.id
      @group = fetch_group
    else
      flash[:notice] = "You must be the owner of this group to edit it."
      redirect_to groups_path
    end
  end
  
  def update
    fetch_group = Group.find(params[:id])
    if fetch_group.user_id == current_user.id
      @group = fetch_group
      if @group.update_attributes(params[:group])
        flash[:notice] = "Successfully updated group."
        redirect_to groups_url
      else
        render :action => 'edit'
      end
    else
      flash[:notice] = "You must be the owner of this group to edit it."
      redirect_to groups_url
    end
  end
  
  def destroy
    fetch_group = Group.find(params[:id])
    if fetch_group.user_id == current_user.id
      @group = fetch_group
      @group.destroy
      flash[:notice] = "Successfully destroyed group."
      redirect_to groups_url
    else
      flash[:notice] = "You must be the owner of this group to edit it."
      redirect_to groups_url
    end
  end
end
