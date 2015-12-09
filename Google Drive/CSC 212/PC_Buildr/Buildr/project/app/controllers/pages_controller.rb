class PagesController < ApplicationController
    def home
        puts "PC Buildr, bitches"
    end
    
    def specs
        puts "Specs, bitches"
        if params[:type] == nil
        	redirect_to :home
        end
    end
    
    def size
        puts "Size, bitches"
        if params[:type] == nil
            redirect_to :home
        end
    end
    
    def results
        puts "Results, bitches"

        if params[:type] == nil
            redirect_to :home
        elsif params[:case] == nil
            redirect_to :back
        end
        def save_my_previous_url
            # session[:previous_url] is a Rails built-in variable to save last url.
            session[:my_previous_url] = URI(request.referer || '').path
        end
        self.save_my_previous_url
    end
end
