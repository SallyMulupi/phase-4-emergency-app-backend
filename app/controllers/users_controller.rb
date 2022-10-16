class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found_response
    
    
    def index
        render json: User.all, status: :ok
    end
    def show 
        user=User.find_by(id: params[:id])
        render json: user, serializer: UserAndReportSerializer, status: :ok
    end
    private
    def not_found_response
        render json: {error: "User not found"}, status: :not_found
    end
end
end
