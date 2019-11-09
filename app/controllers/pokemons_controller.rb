class PokemonsController < ApplicationController
    def capture
        @pokem = Pokemon.find(params[:id])
        @pokem.update(trainer: current_trainer)
        redirect_to :root
    end
end
