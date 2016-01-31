module AlertsHelper
  def watch_param param
      return "balance" if param == 1 
      return "credit limit" if param == 2
      return "new shipment" if param == 3   
  end  
  def condition param
     return "less" if param == 1 
     return "equal" if param ==2
     return "more" if param == 3 
  end
end
