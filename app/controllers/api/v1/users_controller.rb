
module Api
    class V1::UsersController < V1::BaseController

      def show 
        @user = User.find(params[:id])
        @following = @user.following
        @followers = @user.followers
        render_success_response(
                user: single_serializer.new(@user, serializer: Api::V1::UserSerializer),
                following: array_serializer.new(@following, serializer: Api::V1::UserSerializer),
                followers: array_serializer.new(@followers, serializer: Api::V1::UserSerializer)
              )
      end
     
    end
  end
  