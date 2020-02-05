module Api
  module V1
    module Users
      class SessionsController < Devise::SessionsController
        include ApplicationMethods
        skip_before_action :verify_authenticity_token

        respond_to :json

        def create
          session.clear
          if params[:user][:email].present? && params[:user][:password].present?
            user = User.where(email: params[:user][:email]).first
            if user.nil?
              render_unprocessable_entity('Email is Invalid')
              nil
            else
              if user.valid_password? params[:user][:password]
                response.set_header('Access-Control-Expose-Headers', 'Authorization')
                super
              else
                user.errors.add(:password, 'Invalid password.')
                render_unprocessable_entity_response(user)
              end
            end
          else
            render_unprocessable_entity('Please provide email and password.')
          end
        end

    
      end
    end
  end
end
