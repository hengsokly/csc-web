class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true

  before_action :authenticate_user!
  before_action :set_raven_context

  layout :set_layout

  private
    def set_layout
      devise_controller? ? 'layouts/minimal' : 'layouts/application'
    end

    def set_raven_context
      Raven.user_context(id: session[:current_user_id]) # or anything else in session
      Raven.extra_context(params: params.to_unsafe_h, url: request.url)
    end
end
