class ProfileController < ApplicationController
  before_action :authenticate_user!
  wechat_api
  before_action :set_user
  def set_user
    @user = current_user
  end

  layout 'wechat'
  def manage
  end

  def order
    @order = @user.orders.find params[:id]
  end

  def delete_order
    @order ||= @user.orders.find params[:id]
    if @order
      @order.destroy
      render :json => {
        msg: 'The order is deleted'
      }
      return
    else
      render :json => {
        msg: 'Cannot find your order'
      }
      return
    end
  end
end
