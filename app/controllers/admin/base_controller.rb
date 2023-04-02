# frozen_string_literal: true

module Admin
  class BaseController < ApplicationController
    before_action :authenticate_user!
    layout 'admin'

    private

    def authenticate_user!
      if user_signed_in?
        super
      else
        redirect_to admin_login_url
      end
    end
  end
end
