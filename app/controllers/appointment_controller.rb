class AppController < ApplicationController
  
  skip_before_filter :verify_authenticity_token
  
  def index
    @app = App.where("month = ? AND year = ?", params[:month], params[:year])
    render:json => @app
  end

  def create
    @app = App.new(app_params)
    @app.save
    render :nothing => true
  end
  
  private
  
  def app_params
    params.require(:apps).permit(:event, :day, :time, :month, :year)
  end
end