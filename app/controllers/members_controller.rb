class MembersController < ApplicationController
  
  before_filter :login_required
  require_role :admin
  
  def index
    @members = User.find(:all)
  end
  
  def show
    @member = User.find(params[:id])
  end
end
