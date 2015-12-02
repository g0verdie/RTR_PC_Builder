require 'newegg'
require 'sequel'
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :query
  $database = Sequel.sqlite('database.sqlite3')
  $database.run File.read('/Users/ferozrauf/Downloads/RTR_PC_Builder/Google Drive/CSC 212/PC_Buildr/Buildr/db-updated/db.sql')
def query
            $price = params[:price].to_i * 0.8
            $original_price = $price
            if params[:type] == "casual"
            	$misc_price = $price * 0.5
            	$price = $price * 0.5
            	$processor = ($price * params[:processor].to_f)/100
            	$storage = ($price * params[:storage].to_f)/100
                $graphics = 0
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
            puts $processor
            $size = params[:case]
            $cpu = $database[:cpu]
            $cpu = $cpu.where(:price => $cpu.where(:price => 0..$processor).max(:price)).select(:name).max(:name)
            $gfx = $database[:gpu] 
            $gfx = $gfx.where(:price => $gfx.where(:price => 0..$graphics).max(:price)).select(:name).max(:name)
            $stor = params[:type] == "casual" ? $database[:hdd] : $database[:ssd]
            $stor = $stor.where(:price => $stor.where(:price => 0..$storage).max(:price)).select(:name).max(:name)
    		return $cpu, $gfx,$stor,0,0,0,0
        end
 end
