class ProfileController < ApplicationController
  before_action :authenticate_user!
  # to allow using wechat, wechat_oauth2 in controller and wechat_config_js in view
  wechat_api

  layout 'wechat'
  def manage
    # @current_user = User.first
  end
end
