module Api
  module V1
    class TweetSerializer < ActiveModel::Serializer
      attributes :id, :tweet, :user_id

    end
  end
end
