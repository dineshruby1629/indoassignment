
module Api
    class V1::RelationsController < V1::BaseController
        before_action :find_user


      def create
        if @user.following?(current_user)
            render_unprocessable_entity('Already following user.')
        else
            current_user.follow(@user)
            render_success_response(
            message: "User followed"
              )
        end
        
      end
    
      def destroy
        current_user.unfollow(@user)
        render_success_response(
            message: "User unfollowed."
              )
      end
    
      private
        def find_user
            @user = User.find(params[:user_id])
        end
  
     
    end
  end
  