class Api::V1::AttendancesController < Api::V1::GraphitiController
  def index
    attendances = AttendanceResource.all(params)
    respond_with(attendances)
  end

  def show
    attendance = AttendanceResource.find(params)
    respond_with(attendance)
  end

  def create
    attendance = AttendanceResource.build(params)

    if attendance.save
      render jsonapi: attendance, status: :created
    else
      render jsonapi_errors: attendance
    end
  end

  def update
    attendance = AttendanceResource.find(params)

    if attendance.update_attributes
      render jsonapi: attendance
    else
      render jsonapi_errors: attendance
    end
  end

  def destroy
    attendance = AttendanceResource.find(params)

    if attendance.destroy
      render jsonapi: { meta: {} }, status: :ok
    else
      render jsonapi_errors: attendance
    end
  end
end
