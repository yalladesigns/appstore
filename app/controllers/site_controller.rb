class SiteController < ApplicationController

 before_filter :common_content, :only => [:mostpopular, :games, :lifestyle, :entertainment, :android, :ios, :windows, :thankyou, :profile]

  def common_content
    if session[:cart] then
      @cart = session[:cart]
    else
      @cart = {}
    end
  end
  




  def mostpopular
    @apps = App.all.order('downloads DESC')
  end

  def games
    @games = App.where("category LIKE ?", "games")
  end
  def lifestyle
    @lifestyle = App.where("category LIKE ?", "lifestyle")
  end  
  def entertainment
    @entertainment = App.where("category LIKE ?", "entertainment")
  end

  def android
    @android = App.where("platform LIKE ?", "android")
  end  
  def ios
    @ios = App.where("platform LIKE ?", "ios")
  end  
  def windows
    @windows = App.where("platform LIKE ?", "windows")
  end


  
  def thankyou
  end
  
  def profile
  end
  
end
