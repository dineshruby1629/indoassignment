module Api
  module V1
    class UserSerializer < ActiveModel::Serializer
      attributes :id, :name, :user_name, :email

    end
  end
end
