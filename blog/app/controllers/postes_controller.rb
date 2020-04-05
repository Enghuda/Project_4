class PostesController < ApplicationController
    def show
     @poste = Poste.find(params[:id])   
    end
end
