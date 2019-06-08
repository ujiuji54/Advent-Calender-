class Api::BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]

  # GET /blogs.json
  def index
    render json: serialize_blog
  end

  def serialize_blog
    date_length = Time.current.since(params[:month].to_i.month).to_date.in_time_zone.all_month
    Blog.includes(:user).where(start_time: date_length).to_json(includes: :user)
  end
end
