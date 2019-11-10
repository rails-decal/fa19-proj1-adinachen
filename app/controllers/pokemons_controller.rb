class PokemonsController < ApplicationController
    def capture
        @pokem = Pokemon.find(params[:id])
        @pokem.update(trainer: current_trainer)
        redirect_to :root
    end

    def damage
        @pokem = Pokemon.find(params[:id])
        @pokem.update(health: @pokem.health - 10)
        if @pokem.health <= 0
            @pokem.destroy
        end
        redirect_to "/trainer/#{@pokem.trainer.id}"
    end

    def new
        @pokemon = Pokemon.new
    end

    def create
        @poke_params = params.permit(:name, :ndex)
        if @poke_params[:name] and @poke_params[:ndex]
            @pokemon = Pokemon.create!(:name => @poke_params[:name], :ndex => @poke_params[:ndex])
            @pokemon.update(trainer: current_trainer)
            redirect_to("/trainer/#{current_trainer}")
        else
            flash[:error] = @pokemon.errors.full_messages.to_sentence
            redirect_to('/pokemons/new') and return
        end
        
    end

    def initialize

    end

end
