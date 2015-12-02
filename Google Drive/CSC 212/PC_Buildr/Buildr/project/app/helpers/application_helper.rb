require 'newegg'
require 'sequel'
module ApplicationHelper
	$store = Newegg.stores[0]
	$category = Newegg.categories($store.store_id)
	#puts $category[0].node_id
	#puts Newegg.navigate(0,343,7671)
	  $database = Sequel.sqlite('database.sqlite3')
  	$database.run File.read('/Users/ferozrauf/Downloads/RTR_PC_Builder/Google Drive/CSC 212/PC_Buildr/Buildr/db-updated/db.sql')
  	item = $database[:cpu]
    puts item.where(:price => item.where(:price => 0..100).max(:price)).select(:name).max(:name)
	def ApplicationHelper.getCPU(price)
		$category[0]
	end
	def ApplicationHelper.getMem(price,capacity,type,speed)
		$category[1]
	end
	def ApplicationHelper.getMobo(price, socket)
		$category[2]
	end
	def ApplicationHelper.getVCard(price)
		$category[3]
	end
	def ApplicationHelper.getCool(price,type)
		$category[5]
	end
	def ApplicationHelper.getPSU(price,power)
		$category[6]
	end
	def ApplicationHelper.getCase(price,form)
		$category[8]
	end
	def ApplicationHelper.getHDD(price,storage)
		$category[11]
	end
	def ApplicationHelper.getSSD(price,storage)
		$category[12]
	end
	def ApplicationHelper.getDDrive(price)
		$category[14]
	end
end
