class AttendancesController < ApplicationController
  before_action :set_attendance, only: %i[show edit update destroy]

  def index
    @q = Attendance.ransack(params[:q])
    @attendances = @q.result(distinct: true).includes(:attendee,
                                                      :trip).page(params[:page]).per(10)
  end

  def show; end

  def new
    @attendance = Attendance.new
  end

  def edit; end

  def create
    @attendance = Attendance.new(attendance_params)

    if @attendance.save
      message = "Attendance was successfully created."
      if Rails.application.routes.recognize_path(request.referer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
        redirect_back fallback_location: request.referer, notice: message
      else
        redirect_to @attendance, notice: message
      end
    else
      render :new
    end
  end

  def update
    if @attendance.update(attendance_params)
      redirect_to @attendance, notice: "Attendance was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @attendance.destroy
    message = "Attendance was successfully deleted."
    if Rails.application.routes.recognize_path(request.referer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
      redirect_back fallback_location: request.referer, notice: message
    else
      redirect_to attendances_url, notice: message
    end
  end

  private

  def set_attendance
    @attendance = Attendance.find(params[:id])
  end

  def attendance_params
    params.require(:attendance).permit(:trip_id, :attendee_id)
  end
end
