module ApplicationHelper
	
	def format_datetime(date)
	  date ? date.strftime("%d/%m/%Y at %I:%M %p") : "---"
	end

	def format_date(date)
	  date ? date.strftime("%d/%m/%Y") : "---" 
	end

end
