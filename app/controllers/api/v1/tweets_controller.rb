
module Api
    class V1::TweetsController < V1::BaseController
      
      def create
        @tweet = current_user.tweets.build(tweet_params)
        if @tweet.save
            render_success_response(
                tweet: single_serializer.new(@tweet, serializer: Api::V1::TweetSerializer)
              )
        else
        render_unprocessable_entity_response(@request)
        end
      end

      def index
        @tweets = Tweet.following current_user.following
        render_success_response(
                tweets: array_serializer.new(@tweets, serializer: Api::V1::TweetSerializer)
              )
      end
    
      
  
      private
  
      def tweet_params
        params.require(:tweet).permit(:tweet)
      end
  
     
    end
  end
  