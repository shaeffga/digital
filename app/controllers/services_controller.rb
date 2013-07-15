class ServicesController < ApplicationController
  before_filter :find_service, except: [:index, :new, :create]
  
  def index
    @services = Service.all
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(params[:service])
    if @service.save
      redirect_to @service, notice: "Service has been created."
    else
      flash[:alert] = "Service has not been created."
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @service.update_attributes(params[:service])
      flash[:notice] = "Service has been updated."
      redirect_to services_path
    else
      flash[:alert] = "Service has not been updated."
      render :action => "edit"
    end
  end

  def destroy
    @service.destroy
    flash[:notice] = "Service has been deleted."
    redirect_to services_path
  end

  private

  def find_service
    @service = Service.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The Service you were looking for could not be found."
      redirect_to services_path
  end
end
