class MediaPlayersController < ApplicationController
  before_filter :find_media_player, except: [:index, :new, :create]
  
  def index
    @media_players = MediaPlayer.all
  end

  def new
    @media_player = MediaPlayer.new
  end

  def create
    @media_player = MediaPlayer.new(params[:media_player])
    if @media_player.save
      redirect_to @media_player, notice: "Media Player has been created."
    else
      flash[:alert] = "Media Player has not been created."
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @media_player.update_attributes(params[:media_player])
      flash[:notice] = "Media Player has been updated."
      redirect_to media_players_path
    else
      flash[:alert] = "Media Player has not been updated."
      render :action => "edit"
    end
  end

  def destroy
    @media_player.destroy
    flash[:notice] = "Media Player has been deleted."
    redirect_to media_players_path
  end

  private

  def find_media_player
    @media_player = MediaPlayer.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The Media Player you were looking for could not be found."
      redirect_to media_players_path
  end
end
