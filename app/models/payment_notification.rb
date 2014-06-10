class PaymentNotification < ActiveRecord::Base
belongs_to :user
serialize :params
after_create :mark_user_as_pro


private  
  def mark_user_as_pro  
    if status == "Completed"  
    	user.pro = true
    	puts "User complete purchase at #{Time.now}"
    end  
  end 
end
