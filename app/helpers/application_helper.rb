module ApplicationHelper

	def nil_value(value)
		puts "application helper" * 9
		ap params
	  value.include?("nil") ? "no data".html_safe : "#{value}"
	end

end
