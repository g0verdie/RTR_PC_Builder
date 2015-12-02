
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method:cpu

  
  def item
  	item = database[:cpu]
	return item.where(:price => item.where(:price => 0..paras[:cpu]).max(:price)).select(:name)
  end
  def 
end
