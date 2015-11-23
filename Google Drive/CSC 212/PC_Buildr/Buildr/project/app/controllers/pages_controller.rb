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
    end
    
    def results
        puts "Results, bitches"
    end
end
