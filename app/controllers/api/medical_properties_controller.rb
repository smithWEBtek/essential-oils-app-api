class API::MedicalPropertiesController < ApplicationController
  before_action :set_medical_property, only: [:show, :update, :destroy]

  def index
    render json: MedicalProperty.all
  end

  def show
    render json: @medical_property
  end

  def create
    @medical_property = MedicalProperty.new(medical_property_params)
    
    if @medical_property.save
        render json: @medical_property
    else
        render_errors_in_json
    end
  end

  def update
    if @medical_property.update(medical_property_params)
        render json: @medical_property
    else
        render_errors_in_json
    end
  end

  def destroy
    if @medical_property.destroy
      render json: @medical_property, status: 200
    else
      render json: { message: "Unable to Remove this medical_property!" }, status:400
    end
  end

  private

  def medical_property_params
      params.require(:medical_property).permit(:description)
  end

  def set_medical_property
      @medical_property = MedicalProperty.find_by(id: params[:id])

      if !@medical_property
          render json: { 
              errors: { 
                  messages: { medical_property: "medical_property can't be found" }
              }
          }, status: 404
      end
  end

  def render_errors_in_json
      render json: { 
          errors: { 
              messages: @medical_property.errors.messages
          }
      }, status: 422
  end

end

