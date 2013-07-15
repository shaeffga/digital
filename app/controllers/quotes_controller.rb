class QuotesController < ApplicationController
  include Wicked::Wizard
  # before_filter :find_id, except: [:index]

  def index; end

  steps :help_desk, :media_player, :hourly_service, :service 

  def show
    @quote = Quote.find(params[:quote_id])
    case step
    when :help_desk
      @levels = HelpDesk.all.map {|s| [s.id, s.name]}
    end
    render_wizard
  end

  def update
    @quote = Quote.find(params[:quote_id])
    @quote.update_attributes(params[:quote])
    render_wizard @quote
  end

  def create
    @quote = Quote.create
    redirect_to wizard_path(steps.first, :quote_id => @quote.id )
  end

  def find_id
    @quote = Quote.find(params[:quote_id])
    resque ActiveRecord::RecordNotFound
      flash[:alert] = "The Quote you were looking for could not be found."
      redirect_to home_index_path
  end

end
