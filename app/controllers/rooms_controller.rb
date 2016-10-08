class RoomsController < ApplicationController
  layout 'wechat'

  def book
  end

  def confirm
  end

  def check
    order = @user.orders.new(room_type: params["room_type"],
                             checkin: params["checkin_date"],
                             leaveat: params["leave_date"],
                             floor: params["floor"],
                             requirement: params["requirement"])
    check = order.is_avaliable?
    if check[:avaliable]
      render :json => {
        avaliable: true
      }
      order.save
      return
    else
      conflict_order = check[:conflicts][0]
      msg = "A guest has book this room from #{conflict_order.checkin} to #{conflict_order.leaveat}"
      render :json => {
        msg: msg,
        avaliable: false
      }
      return
    end
  end
end
