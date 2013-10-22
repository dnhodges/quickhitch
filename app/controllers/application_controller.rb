# class ApplicationController < ActionController::Base
#   # Prevent CSRF attacks by raising an exception.
#   # For APIs, you may want to use :null_session instead.
#   protect_from_forgery with: :exception

#   def current_user
#     @current_user ||= User.find_by_id(session[:user_id])
#   end

#   private

#   def client
#     Twitter.configure do |config|
#       config.consumer_key = ENV['7WrGIhDxSIbIEceIzF19wQ']
#       config.consumer_secret = ENV['PUuUqxRuRYSsLEsEBtsc6KLvH3wmiHXfLEsOvK3EjBI']
#       config.oauth_token = session['1979496318-aMbgElrqSxMmu1oQgtIanq0ujbIud9PygwSdv60']
#       config.oauth_token_secret = session['ad5SHf4JoEaWX8I6tngFvy1v8Ape2Pt2VeYJZdEqVZQ']
#     end
#   end


# end


class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def client
    Twitter.configure do |config|
      config.consumer_key = ENV['CONSUMER_KEY']
      config.consumer_secret = ENV['CONSUMER_SECRET']
      config.oauth_token = session['access_token']
      config.oauth_token_secret = session['access_secret']
    end
  end

end