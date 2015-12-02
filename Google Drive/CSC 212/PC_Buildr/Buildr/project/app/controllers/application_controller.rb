class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :test

  def test
            $price = params[:price] * .8
            if params[:type] == "casual"
            	$misc_price = $price * .5
            	$price = $price * .5
            	$processor = ($price * params[:processor].to_f)/100
            	$storage = ($price * params[:storage].to_f)/100
            elsif params[:type] == "gaming"
            	$misc_price = $price * .3
            	$price = $price * .7
            	$processor = ($price * params[:processor].to_f)/100
            	$storage = ($price * params[:storage].to_f)/100
            	$graphics = ($price * params[:graphics].to_f)/100
            else
            	$misc_price = $price * .35
            	$price = $price * .65
            	$processor = ($price * params[:processor].to_f)/100
            	$storage = ($price * params[:storage].to_f)/100
            	$graphics = ($price * params[:graphics].to_f)/100
            end

            $size = params[:case]
    		return "hello world"
        end
end
