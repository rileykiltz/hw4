class ApplicationController < ActionController::Base
  before_action :set_current_user

  private

  def set_current_user
    @current_user = User.find_by(id: session[:user_id]) if session[:user_id]
    puts "------------------ code before every request ------------------"
    puts "Current user: #{@current_user.inspect}"
  end
end