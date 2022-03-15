class AvailableDaysController < ApplicationController
  before_action :set_available_day, only: %i[show edit update destroy]

  def index
    @q = AvailableDay.ransack(params[:q])
    @available_days = @q.result(distinct: true).includes(:trip,
                                                         :planner).page(params[:page]).per(10)
  end

  def show; end

  def new
    @available_day = AvailableDay.new
  end

  def edit; end

  def create
    @available_day = AvailableDay.new(available_day_params)

    if @available_day.save
      message = "AvailableDay was successfully created."
      if Rails.application.routes.recognize_path(request.referer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
        redirect_back fallback_location: request.referer, notice: message
      else
        redirect_to @available_day, notice: message
      end
    else
      render :new
    end
  end

  def update
    if @available_day.update(available_day_params)
      redirect_to @available_day,
                  notice: "Available day was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @available_day.destroy
    message = "AvailableDay was successfully deleted."
    if Rails.application.routes.recognize_path(request.referer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
      redirect_back fallback_location: request.referer, notice: message
    else
      redirect_to available_days_url, notice: message
    end
  end

  private

  def set_available_day
    @available_day = AvailableDay.find(params[:id])
  end

  def available_day_params
    params.require(:available_day).permit(:day, :day_name, :trip_id)
  end
end
