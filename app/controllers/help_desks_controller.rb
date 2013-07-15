class HelpDesksController < ApplicationController
  before_filter :find_help_desk, except: [:index, :new, :create]
  
  def index
    @help_desks = HelpDesk.all
  end

  def new
    @help_desk = HelpDesk.new
  end

  def create
    @help_desk = HelpDesk.new(params[:help_desk])
    if @help_desk.save
      redirect_to @help_desk, notice: "Help Desk has been created."
    else
      flash[:alert] = "Help Desk has not been created."
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @help_desk.update_attributes(params[:help_desk])
      flash[:notice] = "Help Desk has been updated."
      redirect_to help_desks_path
    else
      flash[:alert] = "Help Desk has not been updated."
      render :action => "edit"
    end
  end

  def destroy
    @help_desk.destroy
    flash[:notice] = "Help Desk has been deleted."
    redirect_to help_desks_path
  end

  private

  def find_help_desk
    @help_desk = HelpDesk.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The Help Desk you were looking for could not be found."
      redirect_to help_desks_path
  end
end
