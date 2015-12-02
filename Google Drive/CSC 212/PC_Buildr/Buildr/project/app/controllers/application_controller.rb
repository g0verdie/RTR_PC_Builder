class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :query

  def query
            $price = params[:price].to_f * 0.8

            if params[:type] == "casual"
            	$misc_price = $price * 0.5
            	$price = $price * 0.5
            	$processor = ($price * params[:processor].to_f)/100
            	$storage = ($price * params[:storage].to_f)/100
            elsif params[:type] == "gaming"
            	$misc_price = $price * 0.3
            	$price = $price * 0.7
            	$processor = ($price * params[:processor].to_f)/100
            	$storage = ($price * params[:storage].to_f)/100
            	$graphics = ($price * params[:graphics].to_f)/100
            else
            	$misc_price = $price * 0.35
            	$price = $price * 0.65
            	$processor = ($price * params[:processor].to_f)/100
            	$storage = ($price * params[:storage].to_f)/100
            	$graphics = ($price * params[:graphics].to_f)/100
            end

            $size = params[:case]
    		return $price
        end
end
