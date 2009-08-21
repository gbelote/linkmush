# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  def suppress_production
    puts "RAILS_ENV = #{RAILS_ENV}"
    if RAILS_ENV == "production"
      render :file => "#{RAILS_ROOT}/public/404.html",  :status => 404
      false
    end
  end

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
