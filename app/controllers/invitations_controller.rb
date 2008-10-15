class InvitationsController < ApplicationController
  def new
    @invitation = Invitation.new
  end
  
  def create
    @invitation = Invitation.new(params[:invitation])
    @invitation.sender = current_user
    if @invitation.save
      raise if @invitation.token.nil?
      if logged_in?
        Mailer.deliver_invitation(@invitation, signup_url(@invitation.token))
        flash[:notice] = "Thank you, invitation sent."
        redirect_to questions_url
      else
        flash[:notice] = "Thank you for your interest.  We will notify you when more beta accounts are available."
        redirect_to root_url
      end
    else
      render :action => 'new'
    end
  end
end
