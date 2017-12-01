class API::OilsController < ApplicationController
  before_action :set_oil, only: [:show, :update, :destroy]

  def index
    render json: Oil.all
  end

  def show
    render json: @oil
  end

  def create
    @oil = Oil.new(oil_params)
    
    if @oil.save
        render json: @oil
    else
        render_errors_in_json
    end
  end

  def update
    if @oil.update(oil_params)
        render json: @oil
    else
        render_errors_in_json
    end
  end

  def destroy
    if @oil.destroy
      render status: 204
    else
      render json: { message: "Unable to Remove this Oil!" }, status:400
    end
  end

  private

  def oil_params
      params.require(:oil).permit(:name, :description, :uses, :fragrance_profile, :medical_properties)
  end

  def set_oil
      @oil = Oil.find_by(id: params[:id])

      if !@oil
          render json: { 
              errors: { 
                  messages: { oil: "Oil can't be found" }
              }
          }, status: 404
      end
  end

  def render_errors_in_json
      render json: { 
          errors: { 
              messages: @oil.errors.messages
          }
      }, status: 422
  end

end