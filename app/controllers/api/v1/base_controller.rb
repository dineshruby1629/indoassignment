class Api::V1::BaseController < ActionController::API
    include ApplicationMethods
    respond_to :json
    before_action :authenticate_user!
  
  end
  