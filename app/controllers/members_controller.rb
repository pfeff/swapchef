class MembersController < ApplicationController
  
  before_filter :login_required
  
  def index
    @members = User.find(:all)
  end
  
  def show
    @member = User.find(params[:id])
  end
end
