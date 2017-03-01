class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from ActiveRecord::RecordNotFound, with: :not_found 
  rescue_from Exception, with: :not_found
  rescue_from ActionController::RoutingError, with: :not_found

  def raise_not_found
  raise ActionController::RoutingError.new("No route matches #{params[:unmatched_route]}")
  end

  def not_found
  respond_to do |format|
  format.html { render :file => "#{Rails.root}/public/404", :status => :not_found }
  format.xml { head :not_found }
  format.any { head :not_found }
  end
  end

  def error
  respond_to do |format|
  format.html { render :file => "#{Rails.root}/public/500", :status => :error }
  format.xml { head :not_found }
  format.any { head :not_found }
  end
  end

  def disable_json
    if request.format.to_s =~ /json/ 
      redirect_to root_url, notice: "We're sorry we couldn't find the page you were looking for!"
    end
  end

  helper_method :mobile_device?
  private

  def mobile_device?
    if session[:mobile_param]
      session[:mobile_param] == "1"
    else
      request.user_agent =~ /Mobile|webOS/
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password_confirmation]) 
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :password_confirmation, :current_password])
  end
end
