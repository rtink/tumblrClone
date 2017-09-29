module ApplicationHelper
  
  # def bootstrap_class_for flash_type
  #   case flash_type
  #     when :success
  #       "alert-success" # Green
  #     when :danger
  #       "alert-danger" # Red
  #     when :alert
  #       "alert-warning" # Yellow
  #     when :notice
  #       "alert-info" # Blue
  #     else
  #       flash_type.to_s
  #   end
  # end
   BOOTSTRAP_FLASH_MSG = {
    success: 'alert-success',
    error: 'alert-error',
    alert: 'alert-warning',
    notice: 'alert-info'
  }

  def bootstrap_class_for(flash_type)
    BOOTSTRAP_FLASH_MSG.fetch(flash_type, flash_type.to_s)
  end
  
end
