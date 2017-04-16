class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def index
    if session[:cart] then
      @cart = session[:cart]
    else
      @cart = {}
    end
  end
  
end