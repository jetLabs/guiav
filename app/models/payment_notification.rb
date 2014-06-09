class PaymentNotification < ActiveRecord::Base

serialize :params
after_create :mark_user_as_pro


private  
  def mark_user_as_pro  
    if status == "Completed"  
    	puts "User complete purchase at #{Time.now}"
    end  
  end 
end
