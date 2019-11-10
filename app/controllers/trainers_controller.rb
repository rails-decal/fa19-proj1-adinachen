class TrainersController < ApplicationController
  before_action :authenticate_trainer!

  def index
    @trainers = Trainer.all
  end

  def show
    @trainer = Trainer.find(params[:id])
    @table = Pokemon.where(trainer: @trainer)
    @pokemon = Pokemon.new
  end

end
