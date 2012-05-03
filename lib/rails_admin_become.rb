require "rails_admin_become/engine"

module RailsAdminBecome
end

require 'rails_admin/config/actions'

module RailsAdmin
  module Config
    module Actions
      class Become < Base
        RailsAdmin::Config::Actions.register(self)

        register_instance_option :member do
          true
        end

        register_instance_option :visible? do
          [Merchant,Sale,Developer,Member].any? {|clazz |bindings[:object].is_a?(clazz)}
        end

        register_instance_option :controller do
          Proc.new do
            redirect_to main_app.admin_become_path(params[:id],:resource=>params[:model_name])
          end
        end


        register_instance_option :link_icon do
          "icon-user"
        end
      end
    end
  end
end

