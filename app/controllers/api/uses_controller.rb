class API::UsesController < ApplicationController
  before_action :set_use, only: [:show, :update, :destroy]

  def index
    render json: Use.all
  end

  def show
    render json: @use
  end

  def create
    @use = Use.new(use_params)
    
    if @use.save
        render json: @use
    else
        render_errors_in_json
    end
  end

  def update
    if @use.update(use_params)
        render json: @use
    else
        render_errors_in_json
    end
  end

  def destroy
    if @use.destroy
      render json: @use, status: 200
    else
      render json: { message: "Unable to Remove this use!" }, status:400
    end
  end

  private

  def use_params
      params.require(:use).permit(:description)
  end

  def set_use
      @use = Use.find_by(id: params[:id])

      if !@use
          render json: { 
              errors: { 
                  messages: { use: "use can't be found" }
              }
          }, status: 404
      end
  end

  def render_errors_in_json
      render json: { 
          errors: { 
              messages: @use.errors.messages
          }
      }, status: 422
  end

end
