class RolesController < ApplicationController
  def index
    @roles = Role.find(:all)
  end
  
  def new
    @role = Role.new
  end
  
  def create
    @role = Role.new(params[:role])
    if @role.save
      flash[:notice] = "Successfully created role."
      redirect_to roles_url
    else
      render :action => 'new'
    end
  end
end
