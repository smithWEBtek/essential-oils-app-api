class API::OilsController < ApplicationController
  before_action :set_oil, only: [:show, :update, :destroy]

  def index
      @oils = Oil.all

      render json: @oils
  end

  def create
    @oil = Oil.new(oil_params)

    if @oil.save
        render json: @oil
    else
        render_errors_in_json
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
      }
  end

end