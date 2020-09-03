class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true

  before_action :authenticate_user!

  layout :set_layout

  private
    def set_layout
      devise_controller? ? 'layouts/minimal' : 'layouts/application'
    end
end
