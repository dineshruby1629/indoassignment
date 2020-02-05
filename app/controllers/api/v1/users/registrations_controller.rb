#15 Signup/ Login Module
module Api
  module V1
    module Users
      class RegistrationsController < Devise::RegistrationsController
        include ApplicationMethods
        skip_before_action :verify_authenticity_token

        respond_to :json

        def create
          build_resource(sign_up_params)
          if resource.save
            render_success_response(single_serializer.new(resource, serializer: UserSerializer))
          else
            render_unprocessable_entity_response(resource)
          end
        end

        private

        def sign_up_params
          params.require(:user).permit(:name, :email, :password, :user_name)
        end

      end
    end
  end
end
