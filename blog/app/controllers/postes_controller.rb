class PostesController < ApplicationController
    def show
     @poste = Poste.find(params[:id])   
    end
    def index
    @postes = Poste.all
    end
end
