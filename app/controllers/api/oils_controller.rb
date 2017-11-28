class API::OilsController < ApplicationController

  def index
      @oils = Oil.all
      render json: @oils
      # , status: 200
  end

end