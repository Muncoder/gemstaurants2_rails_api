class OrderMailer < ApplicationMailer
	
	def send_receipt order
		@order = order
		mail to: @order.email, subject: "Receipt for order ##{order.id}"
	end

end
