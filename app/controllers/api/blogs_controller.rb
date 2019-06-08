class Api::BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]

  # GET /blogs.json
  def index
    date_length = Time.current.since(params[:month].to_i.month).to_date.in_time_zone.all_month
    render json: Blog.includes(:user).where(start_time: date_length),
           each_serializer: BlogSerializer
  end
end
