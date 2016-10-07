class Order < ApplicationRecord
  belongs_to :user

  # private
  def is_avaliable?
    orders = Order.where(room_type: self.room_type, floor: self.floor)
    orders = orders.select { |o|
      o.checkin <= self.checkin && self.checkin <= o.leaveat || o.checkin <= self.leaveat && self.leaveat <= o.leaveat
    }

    hash = {
      "conflicts": orders,
      "avaliable": orders.count == 0
    }
    hash
  end
end
