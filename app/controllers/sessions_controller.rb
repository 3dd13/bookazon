class SessionsController < ApplicationController
  def create
    if "something here"
      render json: {}, status: 200
    else
      render json: {}, status: 401
    end
  end
end
