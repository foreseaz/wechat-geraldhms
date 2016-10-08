class ProfileController < ApplicationController
  # before_action :authenticate_user!
  # to allow using wechat, wechat_oauth2 in controller and wechat_config_js in view
  # wechat_api

  layout 'wechat'
  def manage
    # @current_user = User.first
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
