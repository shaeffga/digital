class HourlyServicesController < ApplicationController
  before_filter :find_hourly_service, except: [:index, :new, :create]
  
  def index
    @hourly_services = HourlyService.all
  end

  def new
    @hourly_service = HourlyService.new
  end

  def create
    @hourly_service = HourlyService.new(params[:hourly_service])
    if @hourly_service.save
      redirect_to @hourly_service, notice: "Hourly Service has been created."
    else
      flash[:alert] = "Hourly Service has not been created."
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @hourly_service.update_attributes(params[:hourly_service])
      flash[:notice] = "Hourly Service has been updated."
      redirect_to hourly_services_path
    else
      flash[:alert] = "Hourly Service has not been updated."
      render :action => "edit"
    end
  end

  def destroy
    @hourly_service.destroy
    flash[:notice] = "Hourly Service has been deleted."
    redirect_to hourly_services_path
  end

  private

  def find_hourly_service
    @hourly_service = HourlyService.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The Hourly Service you were looking for could not be found."
      redirect_to hourly_services_path
  end
end
