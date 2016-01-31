class DashboardController < ApplicationController
  before_action :authenticate_user!
  def index
    @credit = current_user.account ? current_user.account.credit : 0
    @payments_to_clear = current_user.shipments.where(status:"wait")
    @gst_to_clear = gst_to_clear
    @balance = @credit - @gst_to_clear 
  end
  def gst_to_clear 
    sum = 0
    @payments_to_clear.each do |shipment|
      sum += shipment.gst
    end
    sum
  end
end
