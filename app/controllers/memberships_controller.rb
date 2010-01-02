class MembershipsController < ApplicationController
  def create
    @membership = Membership.new(params[:membership])
    if @membership.save
      flash[:notice] = "Successfully created membership."
      redirect_to root_url
    else
      render :action => 'new'
    end
  end
  
  def destroy
    @membership = Membership.find(params[:id])
    @membership.destroy
    flash[:notice] = "Successfully destroyed membership."
    redirect_to root_url
  end
end
