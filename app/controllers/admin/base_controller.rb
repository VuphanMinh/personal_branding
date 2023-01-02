# frozen_string_literal: true

module Admin
  class BaseController < ApplicationController
    # before_action :authenticate_user!, :authorize_access!

    layout 'admin'

    # private

    # def authenticate_user!
    #   if user_signed_in?
    #     super
    #   else
    #     redirect_to admin_login_url
    #   end
    # end

    # def authorize_access!
    #   authorize(:access, :admin_namespace?)
    # end
  end
end
