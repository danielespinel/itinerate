class Api::V1::AvailableDaysController < Api::V1::GraphitiController
  def index
    available_days = AvailableDayResource.all(params)
    respond_with(available_days)
  end

  def show
    available_day = AvailableDayResource.find(params)
    respond_with(available_day)
  end

  def create
    available_day = AvailableDayResource.build(params)

    if available_day.save
      render jsonapi: available_day, status: :created
    else
      render jsonapi_errors: available_day
    end
  end

  def update
    available_day = AvailableDayResource.find(params)

    if available_day.update_attributes
      render jsonapi: available_day
    else
      render jsonapi_errors: available_day
    end
  end

  def destroy
    available_day = AvailableDayResource.find(params)

    if available_day.destroy
      render jsonapi: { meta: {} }, status: :ok
    else
      render jsonapi_errors: available_day
    end
  end
end
