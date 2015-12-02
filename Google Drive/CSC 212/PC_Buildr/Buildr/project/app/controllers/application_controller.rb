require 'newegg'
require 'sequel'
require 'rails'
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :query
  $database = Sequel.sqlite('database.sqlite3')
  $database.run File.read(Rails.root.join('db','db.sql').to_s)
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
            	$misc_price = $price * 0.35
            	$price = $price * 0.65
            	$processor = ($price * params[:processor].to_f)/100
            	$storage = ($price * params[:storage].to_f)/100
            	$graphics = ($price * params[:graphics].to_f)/100
            else
            	$misc_price = $price * 0.4
            	$price = $price * 0.6
            	$processor = ($price * params[:processor].to_f)/100
            	$storage = ($price * params[:storage].to_f)/100
            	$graphics = ($price * params[:graphics].to_f)/100
            end
            $size = params[:case]
            $misc_price = $misc_price/4
            $case = $database[:case]
            $case = $case.where(:price => $case.where(:price => 0..$misc_price).max(:price)).select(:name).max(:name)
            $board = $database[:motherboard]
            $board = $board.where(:price => $board.where(:price => 0..$misc_price).max(:price)).select(:name).max(:name)
            $psu =  $database[:psu]
            $psu = $psu.where(:price => $psu.where(:price => 0..$misc_price).max(:price)).select(:name).max(:name)
            $ram = $database[:ram]
            $ram = $ram.where(:price => $ram.where(:price => 0..$misc_price).max(:price)).select(:name).max(:name)
            $cpu = $database[:cpu]
            $cpu = $cpu.where(:price => $cpu.where(:price => 0..$processor).max(:price)).select(:name).max(:name)
            $gfx = $database[:gpu] 
            $gfx = $gfx.where(:price => $gfx.where(:price => 0..$graphics).max(:price)).select(:name).max(:name)
            $stor = params[:type] == "casual" ? $database[:hdd] : $database[:ssd]
            $stor = $stor.where(:price => $stor.where(:price => 0..$storage).max(:price)).select(:name).max(:name)
    		return $cpu, $gfx,$stor,$case,$board,$psu,$ram
        end
 end
 def getImage(type,name)
    $image = $database[type]
    return $image.where(:name => name).select(:image).max(:image)
 end
