class OpenidController < ApplicationController
  
  def clickpass
  end
  
  def register
    # live
    redirect_to CLICKPASS_REGISTRATION_URL
  end
  
  def process_openid_registration
    @family_name = params['family-name']
    @nickname = params[:nickname]
    @given_name = params['given-name']
    @photo_url = params['photo-url']
    @email = params[:email]
  end
  
  def login
    url = params[:openid_url]
    logger.info "Attempint to log in user #{url}"
    
    authenticate_with_open_id(url) do |status, identity_url|
      if status.successful?
         logger.info "OpenID verification succeeded"
         if @current_user = @account.users.find_by_identity_url(identity_url)
           logger.info "Logging in"
           successful_login
         else
           logger.info "Redirecting to registration"
           redirect_to :action => 'register'
         end
       else
         logger.info "Login failed: #{result.message}"
       end
      end
        
  end
  
  private
  
  def successful_login
    session[:user_id] = @current_user.id
    redirect_to('/')
  end
  
end
