class CartController < ApplicationController
  
  def add
    
    id = params[:id].to_i
  
    if session[:cart] then
      cart = session[:cart]
    else
      session[:cart] = {}
      cart = session[:cart]
    end
    
      cart[id] = 1

    redirect_to :action => :index
  
  end
  
  def clearCart
    session[:cart] = nil
    redirect_to :action => :index
  end
  
  #def completePurchase
   
    # add code to add transaction record for each app purchased to transaction model
    
   # object = Transactions.new(:App, :User)
   # object.save
    
   # session[:cart] = nil
    
  #  redirect_to '/thankyou'
  #end

  
  def index
    if session[:cart] then
      @cart = session[:cart]
    else
      @cart = {}
    end
  end
  
end
