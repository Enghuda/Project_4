class PostesController < ApplicationController
    before_action :find_poste , only: [:show, :edit, :update, :destroy]
    def show
    end
    def index
    @postes = Poste.all
    end
    def new
    @poste = Poste.new
    end
    def create
    @poste = Poste.new(poste_params)
    if @poste.save
    redirect_to @poste
    else 
        render 'new'
    end
end
def edit
end
def update
    if @poste.update(poste_params)
        redirect_to poste_path(@poste)
    else
        render 'edit'
    end
end
def destroy
    @poste.destroy
    redirect_to root_path
end

    private
    def poste_params
        params.required(:poste).permit(:name , :description)       
    end
    def find_poste
        @poste = Poste.find(params[:id])   
    end
end
