class ReportsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity_response
    def index
        render json: Report.all, status: :ok
    end
    
    def show
        report=Report.find_by!(id: params[:id])
        render json: report, status: :ok
    end
    def update
        report=Report.find_by!(id: params[:id])
        power.update(description: params[:description])
        render json: power,  status: :accepted 
   end
    def destroy
        report=Report.find_by!(id: params[:id])
        report.destroy
        render json: {}, status: :no_content
    end

    private
    def not_found_response
        render json: {error: "Report not found"}, status: :not_found
    end
    def unprocessable_entity_response(invalid)
        render json: {error: invalid.record.errors.full_messages}, status: :unprocessable_entityps

    end

end
